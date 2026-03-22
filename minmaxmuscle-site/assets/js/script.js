/**
 * MINMAXMUSCLE - Core SPA Logic
 * Handles routing, data fetching, rendering, and interactive components.
 */

const ROUTES = { 
    '/': { id: 'view-home', title: 'MINMAXMUSCLE | Peak Human Performance' },
    '/peptides': { id: 'view-peptides', title: 'Peptide Database | MINMAXMUSCLE' },
    '/peptidesdb.html': { id: 'view-peptides', title: 'Peptide Database | MINMAXMUSCLE' },
    '/stacks': { id: 'view-stacks', title: 'Protocol Stacks | MINMAXMUSCLE' },
    '/stacksdb.html': { id: 'view-stacks', title: 'Protocol Stacks | MINMAXMUSCLE' },
    '/calculators': { id: 'view-calculators', title: 'Peptide Calculators | MINMAXMUSCLE' },
    '/coaching': { id: 'view-coaching', title: 'Performance Coaching | MINMAXMUSCLE' },
    '/about': { id: 'view-about', title: 'About Us | MINMAXMUSCLE' },
    '/contact': { id: 'view-contact', title: 'Contact | MINMAXMUSCLE' },
    '/privacy': { id: 'view-privacy', title: 'Privacy Policy | MINMAXMUSCLE' },
    '/terms': { id: 'view-terms', title: 'Terms of Service | MINMAXMUSCLE' }
};

// INITIALIZE EMPTY: ALL DATA SERVED FROM D1 DATABASE
let DB = {
    peptides: [],
    stacks: []
};

let activeCategory = 'ALL';

/**
 * Navigation handler for SPA
 */
function navigate(path, push = true) {
    if (path.startsWith('/peptide/')) return openPepDossier(path.split('/')[2], push);
    if (path.startsWith('/stack/')) return openStackDossier(path.split('/')[2], push);
    
    // Normalize path: remove .html, hashes, and trailing slashes for comparison
    const normPath = (p) => p.replace('.html', '').replace('#', '').replace(/\/$/, '') || '/';
    const cleanPath = normPath(path);
    const currPath = normPath(location.pathname);
    const isIndex = currPath === '/' || currPath === '/index';

    // Global navigation behavior for Peptides/Stacks
    if (cleanPath === '/peptides' || cleanPath === '/stacks') {
        if (!isIndex && currPath !== cleanPath && currPath !== cleanPath + 'db') { 
            window.location.href = cleanPath; 
            return; 
        }
    }

    const routeData = ROUTES[path] || ROUTES[path + '.html'] || ROUTES['/' + cleanPath] || ROUTES['/'];
    if (!routeData) return;

    const viewId = routeData.id;
    const targetView = document.getElementById(viewId);
    
    // If target view doesn't exist on this page, perform clean navigation ONLY if different
    if (!targetView) {
        const targetUrl = cleanPath.startsWith('/') ? cleanPath : '/' + cleanPath;
        if (currPath !== normPath(targetUrl)) {
            window.location.href = targetUrl;
        }
        return;
    }

    // Deactivate all sections with a slight delay for exit animation if needed
    document.querySelectorAll('.view-section').forEach(v => v.classList.remove('active'));
    
    // Reactivate target view
    setTimeout(() => {
        targetView.classList.add('active');
    }, 10);
    
    // Update nav links
    document.querySelectorAll('.nav-link').forEach(l => l.classList.remove('active', 'text-white', 'bg-white/10'));
    const lid = 'nav-' + cleanPath.replace('/', '');
    const navEl = document.getElementById(lid);
    if(navEl) {
        navEl.classList.add('active', 'text-white', 'bg-white/10');
        navEl.classList.remove('text-zinc-400');
    }
    
    if (push) {
        const pushUrl = cleanPath.startsWith('/') ? cleanPath : '/' + cleanPath;
        window.history.pushState({}, '', pushUrl);
    }
    window.scrollTo({ top: 0, behavior: 'smooth' });
    closeModal();
    
    // Close mobile menu if open
    closeMobileMenu();
    
    if (!cleanPath.startsWith('/peptide') && !cleanPath.startsWith('/stack')) {
        document.title = routeData.title;
    }
}

/**
 * Mobile Menu Controls
 */
function toggleMobileMenu() {
    const menu = document.getElementById('mobile-menu');
    const icon = document.getElementById('menu-icon');
    if (!menu) return;

    if (menu.classList.contains('hidden')) {
        menu.classList.remove('hidden');
        setTimeout(() => {
            menu.classList.remove('opacity-0');
            menu.classList.add('opacity-100');
        }, 10);
        if(icon) icon.setAttribute('data-feather', 'x');
    } else {
        closeMobileMenu();
    }
    feather.replace();
}

function closeMobileMenu() {
    const menu = document.getElementById('mobile-menu');
    const icon = document.getElementById('menu-icon');
    if (!menu || menu.classList.contains('hidden')) return;

    menu.classList.remove('opacity-100');
    menu.classList.add('opacity-0');
    setTimeout(() => {
        menu.classList.add('hidden');
    }, 300);
    if(icon) icon.setAttribute('data-feather', 'menu');
    feather.replace();
}

/**
 * Terminology & SEO Optimization
 * Loads central dictionary and updates DOM elements with data-seo attributes.
 */
async function loadTerminology() {
    try {
        const res = await fetch('/assets/terminology.json');
        if (!res.ok) return;
        const dict = await res.json();
        
        document.querySelectorAll('[data-seo]').forEach(el => {
            const key = el.getAttribute('data-seo');
            if (dict[key]) {
                if (el.tagName === 'INPUT' || el.tagName === 'TEXTAREA') {
                    el.placeholder = dict[key];
                } else {
                    el.innerText = dict[key];
                }
            }
        });
        
        // Update document title if site_title is present
        if (dict.site_title && (window.location.pathname === '/' || window.location.pathname === '/index.html')) {
            document.title = dict.site_title;
        }
    } catch (e) {
        console.warn("Terminology load failed:", e);
    }
}

/**
 * Initialize application and fetch data FROM D1
 */
async function init() {
    await loadTerminology();
    try {
        const res = await fetch('/api/peptides');
        if(res.ok) {
            const data = await res.json();
            if (data && data.peptides) {
                console.log("Authoritative D1 Data Loaded:", data.peptides.length, "peptides");
                DB.peptides = data.peptides;
                DB.stacks = data.stacks || [];
                
                // Ensure all entries have forum links fallback with safe property access
                DB.peptides = DB.peptides.map(p => ({
                    ...p,
                    forum_topic_url: p.forum_topic_url || `https://blog.minmaxmuscle.com/forum/search/?keywords=${encodeURIComponent(p.name || p.peptide_name || 'Peptide')}`
                }));

                renderFilters();
                renderP(DB.peptides);
                renderS(DB.stacks);
                handleURL();
            }
        }
    } catch(e) {
        console.error("CRITICAL: D1 API Connection Failed", e);
    }
    feather.replace();
}

/**
 * Handles initial URL loading and popstate events
 */
function handleURL() {
    const p = window.location.pathname;
    const h = window.location.hash;
    
    if(p.startsWith('/peptide/')) openPepDossier(p.split('/')[2], false);
    else if(p.startsWith('/stack/')) openStackDossier(p.split('/')[2], false);
    else if(h) navigate('/' + h.replace('#', ''), false);
    else navigate(p, false);
}

/**
 * Renders Category Filter Buttons
 */
function renderFilters() {
    const bar = document.getElementById('filter-bar');
    if (!bar) return;

    const cats = ['ALL', ...new Set(DB.peptides.map(p => p.category).filter(Boolean).sort())];
    
    bar.innerHTML = cats.map(c => `
        <button onclick="setCategory('${c}')" class="filter-btn px-6 py-2.5 rounded-full text-[10px] font-black uppercase tracking-widest transition-all whitespace-nowrap ${activeCategory === c ? 'bg-emerald-600 text-white shadow-lg shadow-emerald-600/30' : 'glass text-zinc-500 hover:text-white border-white/5'}">
            ${c}
        </button>
    `).join('');
}

function setCategory(cat) {
    activeCategory = cat;
    renderFilters();
    applyFilters();
}

function applyFilters() {
    const query = document.getElementById('pepSearch')?.value.toLowerCase() || '';
    const filtered = DB.peptides.filter(p => {
        const name = p.name || p.peptide_name || '';
        const summary = p.research_summary || '';
        const focus = p.primary_focus || '';
        
        const matchesCat = activeCategory === 'ALL' || (p.category || p.Category) === activeCategory;
        const matchesQuery = name.toLowerCase().includes(query) || 
                             summary.toLowerCase().includes(query) ||
                             focus.toLowerCase().includes(query);
        return matchesCat && matchesQuery;
    });
    renderP(filtered);
}

/**
 * Renders Peptide grid
 */
function renderP(arr) {
    const grid = document.getElementById('pep-grid');
    if (!grid) return;
    
    if (arr.length === 0) {
        grid.innerHTML = `<div class="col-span-full py-24 text-center glass rounded-[3rem] border-white/5 mx-auto w-full max-w-2xl"><p class="text-zinc-600 font-black uppercase text-xs tracking-widest italic">No matching dossiers found in the matrix.</p></div>`;
        return;
    }

    grid.innerHTML = arr.map(p => {
        const forumUrl = `https://blog.minmaxmuscle.com/forum/search/?keywords=${encodeURIComponent(p.name)}`;
        return `
            <div class="glass p-8 rounded-[3rem] border-white/5 group flex flex-col h-full relative transition-all duration-500 hover:scale-[1.02] hover:bg-white/5">
                <a href="/peptide/${p.slug}" onclick="event.preventDefault(); openPepDossier('${p.slug}')" class="flex-grow block">
                    <div class="flex justify-between items-center mb-6">
                        <span class="text-[9px] font-black uppercase text-emerald-500 bg-emerald-500/10 px-4 py-1.5 rounded-full border border-emerald-500/20 tracking-widest data-mono">${p.category || 'Core'}</span>
                        <span class="text-zinc-800 text-[10px] font-black italic tracking-tighter data-mono">P_ID: ${String(p.id).padStart(3, '0')}</span>
                    </div>
                    <h3 class="text-3xl font-black italic mb-3 uppercase leading-none tracking-tighter text-white group-hover:text-emerald-500 transition-colors">${p.name || p.peptide_name || 'Dossier Pending'}</h3>
                    <p class="text-zinc-500 text-sm font-medium mb-6 leading-relaxed italic line-clamp-3">${p.primary_focus || p.research_summary || 'Archival data synchronization in progress.'}</p>
                </a>
                <div class="mt-auto pt-6 border-t border-white/5 flex justify-between items-center">
                    <a href="${p.forum_topic_url || forumUrl}" target="_blank" class="text-[9px] font-black uppercase text-zinc-600 hover:text-white flex items-center gap-2 transition tracking-widest">
                        <i data-feather="message-square" class="w-3 h-3"></i>
                        COMMUNITY
                    </a>
                    <a href="/peptide/${p.slug}" onclick="event.preventDefault(); openPepDossier('${p.slug}')" class="text-[9px] font-black uppercase text-zinc-600 group-hover:text-emerald-500 flex items-center gap-2 transition tracking-widest data-mono">
                        ANALYZE
                        <i data-feather="arrow-right" class="w-3 h-3 group-hover:translate-x-1 transition"></i>
                    </a>
                </div>
            </div>
        `;
    }).join('');
    feather.replace();
}

/**
 * Renders Stacks grid
 */
function renderS(arr) {
    const grid = document.getElementById('stacks-grid');
    if (!grid) return;

    grid.innerHTML = arr.map(s => {
        return `
            <a href="/stack/${s.slug}" onclick="event.preventDefault(); openStackDossier('${s.slug}')" class="glass min-h-[400px] relative overflow-hidden group flex flex-col justify-end p-12 rounded-[4rem] border-white/5 transition-all duration-700 hover:scale-[1.01]">
                <img src="https://images.unsplash.com/photo-1550345332-09e3ac987658?q=80&w=1000" class="absolute inset-0 w-full h-full object-cover opacity-10 grayscale group-hover:scale-105 transition duration-1000">
                <div class="absolute inset-0 bg-gradient-to-t from-zinc-950 via-zinc-950/60 to-transparent"></div>
                <div class="relative z-10">
                    <span class="text-[9px] font-black uppercase text-emerald-500 bg-emerald-500/10 px-4 py-1.5 rounded-full border border-emerald-500/20 mb-6 inline-block tracking-widest data-mono">Rank: ${s.rank}</span>
                    <h3 class="text-6xl font-black italic uppercase leading-none mb-4 text-white tracking-tighter group-hover:text-emerald-500 transition-colors">${s.title}</h3>
                    <p class="text-zinc-500 text-sm font-medium max-w-md line-clamp-2 italic mb-8">${s.description}</p>
                    <div class="px-10 py-4 bg-white text-black rounded-2xl font-black text-[10px] uppercase italic tracking-widest hover:bg-emerald-600 hover:text-white transition-all transform origin-left data-mono">Protocol Analysis</div>
                </div>
            </a>
        `;
    }).join('');
    feather.replace();
}

/**
 * Opens Peptide Detail Modal
 */
function openPepDossier(slug, push = true) {
    const p = DB.peptides.find(x => x.slug === slug);
    if(!p) return navigate('/peptides');
    
    const stacks = DB.stacks.filter(s => {
         if(s.component_list) {
             return s.component_list.some(c => c.slug === p.slug || (c.name && c.name.toLowerCase() === p.name.toLowerCase()));
         }
         return false;
    });
    const q = p.faq_questions ? p.faq_questions.split('|||') : [];
    const a = p.faq_answers ? p.faq_answers.split('|||') : [];
    const src = p.sources ? p.sources.split(',') : [];
    const forumUrl = `https://blog.minmaxmuscle.com/forum/search/?keywords=${encodeURIComponent(p.name)}`;

    document.getElementById('modal-content').innerHTML = `
        <div class="glass flex flex-col md:grid md:grid-cols-12 min-h-[70vh] rounded-[4rem] border-white/10 overflow-hidden shadow-2xl relative">
            <div class="md:col-span-4 bg-zinc-950/80 p-10 md:p-14 border-b md:border-b-0 md:border-r border-white/5 flex flex-col justify-center">
                <div class="inline-flex items-center gap-2 px-3 py-1.5 rounded-full bg-emerald-600/10 border border-emerald-600/20 text-emerald-400 text-[9px] font-black uppercase tracking-widest mb-8 w-fit data-mono">
                    <span class="w-1.5 h-1.5 rounded-full bg-emerald-500 animate-pulse"></span>
                    Archive Verified
                </div>
                <h2 class="text-5xl md:text-6xl font-black italic uppercase leading-[0.85] mb-6 tracking-tighter text-white">${p.name}</h2>
                <p class="text-zinc-500 font-bold uppercase text-[10px] tracking-[0.3em] mb-10 italic data-mono">PX-01${p.id} // ${p.category}</p>
                
                <div class="space-y-4">
                    <div class="p-6 bg-white/5 rounded-3xl border border-white/5 transition-colors hover:border-emerald-500/20">
                        <p class="text-[8px] text-zinc-600 font-black uppercase tracking-widest mb-2 data-mono">Designations</p>
                        <p class="text-xs font-bold italic text-zinc-300 leading-snug">${p.nicknames || 'Standard Protocol'}</p>
                    </div>
                    <div class="p-6 bg-white/5 rounded-3xl border border-white/5 transition-colors hover:border-emerald-500/20">
                        <p class="text-[8px] text-zinc-600 font-black uppercase tracking-widest mb-2 data-mono">Research Status</p>
                        <p class="text-xs font-black italic text-emerald-500">${p.legal_status || 'Active Archive'}</p>
                    </div>
                    
                    <a href="${p.forum_topic_url || forumUrl}" target="_blank" class="p-6 bg-emerald-600/10 border border-emerald-600/20 rounded-3xl block hover:bg-emerald-600/20 transition-all group">
                        <p class="text-[8px] text-emerald-400 font-black uppercase mb-2 flex items-center gap-2 tracking-widest data-mono">
                            <i data-feather="message-square" class="w-3 h-3"></i>
                            Community Matrix
                        </p>
                        <p class="text-xs font-black italic text-white group-hover:text-emerald-400 transition mb-1">Discuss this protocol</p>
                        <p class="text-[9px] text-zinc-600 font-bold uppercase data-mono">Open Terminal Access <i data-feather="external-link" class="inline w-2 h-2 ml-1"></i></p>
                    </a>
                </div>
            </div>
            
            <div class="md:col-span-8 p-10 md:p-16 relative overflow-y-auto max-h-[70vh] md:max-h-none">
                <button onclick="closeModal()" class="fixed md:absolute top-8 right-8 text-zinc-500 hover:text-white transition p-3 glass rounded-full z-20 group">
                    <i data-feather="x" class="w-5 h-5 group-hover:rotate-90 transition-transform"></i>
                </button>
                
                <div class="mb-14">
                    <h3 class="text-sm font-black text-emerald-600 uppercase mb-6 tracking-[0.4em] italic flex items-center gap-4 data-mono">
                        <span class="w-10 h-1 bg-emerald-600 rounded-full"></span>
                        Executive Summary
                    </h3>
                    <p class="text-zinc-300 leading-relaxed font-medium text-lg md:text-xl italic">${p.research_summary || 'Analysis currently being processed by the matrix.'}</p>
                </div>
                
                <div class="grid grid-cols-1 md:grid-cols-2 gap-10 mb-14">
                    <div class="space-y-4">
                        <h4 class="text-[10px] font-black text-zinc-600 uppercase tracking-widest italic data-mono">Molecular Data</h4>
                        <div class="p-6 bg-zinc-950 border border-white/5 rounded-3xl font-mono text-[10px] text-emerald-400/80 break-all leading-relaxed">${p.molecular_data || 'Classified Information'}</div>
                    </div>
                    ${stacks.length ? `
                    <div class="space-y-4">
                        <h4 class="text-[10px] font-black text-zinc-600 uppercase tracking-widest italic data-mono">Synergistic Stacks</h4>
                        <div class="flex flex-wrap gap-2">
                            ${stacks.map(s => `<button onclick="openStackDossier('${s.slug}')" class="px-5 py-3 glass border-emerald-500/10 rounded-2xl text-[10px] font-black uppercase italic text-emerald-500 hover:border-emerald-500 transition-all data-mono">${s.title}</button>`).join('')}
                        </div>
                    </div>` : ''}
                </div>

                ${q.length && q[0] ? `
                <div class="mb-14">
                    <h4 class="text-[10px] font-black text-zinc-600 uppercase mb-8 tracking-widest italic">Clinical Inquiries</h4>
                    <div class="space-y-4">
                        ${q.map((qi, i) => qi ? `
                        <details class="glass bg-white/5 rounded-3xl group border-white/5">
                            <summary class="p-6 cursor-pointer font-black text-xs flex justify-between items-center italic uppercase leading-none text-zinc-200 tracking-wider">
                                ${qi}
                                <i data-feather="plus" class="w-4 h-4 text-zinc-600 group-open:rotate-45 transition-transform"></i>
                            </summary>
                            <div class="p-8 pt-2 text-sm text-zinc-500 border-t border-white/5 leading-relaxed font-medium italic">
                                ${a[i] || 'Further clinical data required.'}
                            </div>
                        </details>` : '').join('')}
                    </div>
                </div>` : ''}

                ${src.length && src[0] ? `
                <div class="mt-auto pt-8 border-t border-white/5">
                    <h4 class="text-[10px] font-black text-zinc-700 uppercase mb-6 tracking-widest italic data-mono">Source Documentation</h4>
                    <div class="flex flex-wrap gap-6">
                        ${src.map((s, i) => `<a href="${s.trim()}" target="_blank" class="text-[9px] text-emerald-600/60 hover:text-emerald-400 transition-colors font-black uppercase italic tracking-widest flex items-center gap-2 data-mono">Ref. 0${i+1} <i data-feather="external-link" class="w-2 h-2"></i></a>`).join('')}
                    </div>
                </div>` : ''}
            </div>
        </div>
    `;
    showM(); 
    if(push) window.history.pushState({}, '', `/peptide/${slug}`);
    document.title = `${p.name} Dossier // MinMaxMuscle`;
    feather.replace();
}

/**
 * Opens Stack Detail Modal
 */
function openStackDossier(slug, push = true) {
    const s = DB.stacks.find(x => x.slug === slug);
    if(!s) return navigate('/stacks');
    
    const comps = s.component_list || [];
    const q = s.faq_questions ? s.faq_questions.split('|||') : [];
    const a = s.faq_answers ? s.faq_answers.split('|||') : [];
    const forumUrl = `https://blog.minmaxmuscle.com/forum/search/?keywords=${encodeURIComponent(s.title || s.stack_name || 'Protocol')}`;

    document.getElementById('modal-content').innerHTML = `
        <div class="glass flex flex-col md:grid md:grid-cols-12 min-h-[60vh] rounded-[4rem] border-white/10 overflow-hidden shadow-2xl relative">
            <div class="md:col-span-5 bg-zinc-950/80 p-12 md:p-20 border-b md:border-b-0 md:border-r border-white/5 flex flex-col justify-center relative">
                <div class="absolute inset-0 bg-emerald-600/5 blur-[100px] -z-10"></div>
                <span class="text-emerald-500 font-black uppercase text-[10px] tracking-[0.4em] mb-8 italic flex items-center gap-3 data-mono">
                    <span class="w-8 h-px bg-emerald-600"></span> Synergy Matrix
                </span>
                <h2 class="text-7xl font-black italic leading-[0.8] uppercase mb-8 tracking-tighter text-white">${s.title}</h2>
                <p class="text-zinc-400 font-medium text-lg italic leading-relaxed mb-12">${s.description || 'Synergistic protocol analysis pending.'}</p>
                
                <a href="${s.forum_topic_url || forumUrl}" target="_blank" class="p-8 bg-emerald-600/10 border border-emerald-600/20 rounded-[2.5rem] block hover:bg-emerald-600/20 transition-all group">
                    <p class="text-[8px] text-emerald-400 font-black uppercase mb-2 flex items-center gap-2 tracking-widest data-mono">
                        <i data-feather="activity" class="w-3 h-3"></i>
                        Optimization Archive
                    </p>
                    <p class="text-xs font-black italic text-white group-hover:text-emerald-400 transition mb-1">Access Community Data</p>
                    <p class="text-[9px] text-zinc-600 font-bold uppercase tracking-widest data-mono">Terminal Link <i data-feather="external-link" class="inline w-2 h-2 ml-2"></i></p>
                </a>
            </div>
            
            <div class="md:col-span-7 p-12 md:p-20 relative overflow-y-auto max-h-[70vh] md:max-h-none">
                <button onclick="closeModal()" class="fixed md:absolute top-10 right-10 text-zinc-500 hover:text-white transition p-3 glass rounded-full z-20 group">
                    <i data-feather="x" class="w-5 h-5 group-hover:rotate-90 transition-transform"></i>
                </button>
                
                <h4 class="text-[10px] font-black text-zinc-700 uppercase mb-10 tracking-[0.3em] italic">Protocol Components</h4>
                
                <div class="grid grid-cols-1 sm:grid-cols-2 gap-4 mb-16">
                    ${comps.length > 0 ? comps.map(c => {
                        const found = DB.peptides.find(p => {
                            const pName = (p.name || p.peptide_name || '').toLowerCase();
                            const cName = (c.name || '').toLowerCase();
                            return p.slug === c.slug || (cName && pName === cName);
                        });
                        return `<div ${found ? `onclick="openPepDossier('${found.slug}')"` : ''} class="p-8 glass rounded-3xl flex flex-col justify-between border-white/5 ${found ? 'cursor-pointer hover:border-emerald-500/40 hover:bg-white/5' : 'opacity-30'} group transition-all">
                            <div class="flex justify-between items-start mb-4">
                                <span class="text-[8px] text-zinc-700 uppercase tracking-widest font-black data-mono">COMPONENT</span>
                                ${found ? '<i data-feather="zap" class="w-3 h-3 text-emerald-500 opacity-0 group-hover:opacity-100 transition"></i>' : ''}
                            </div>
                            <span class="font-black uppercase italic text-2xl text-white group-hover:text-emerald-500 transition mb-2 tracking-tighter">${c.name || (found ? found.name : 'Unknown')}</span>
                            <span class="text-xs text-zinc-500 font-bold italic data-mono">${c.dosage || 'Variable Dosing'}</span>
                        </div>`;
                    }).join('') : '<p class="text-zinc-600 text-xs italic font-black uppercase tracking-widest">No active components registered.</p>'}
                </div>

                ${q.length && q[0] ? `
                <div class="space-y-4">
                    <h4 class="text-[10px] font-black text-zinc-700 uppercase mb-8 tracking-[0.3em] italic data-mono">Intelligence Assessment</h4>
                    ${q.map((qi, i) => qi ? `
                    <details class="glass bg-white/5 rounded-3xl group border-white/5">
                        <summary class="p-6 cursor-pointer font-black text-xs flex justify-between items-center italic uppercase leading-none text-zinc-200 tracking-wider">
                            ${qi}
                            <i data-feather="chevron-down" class="w-4 h-4 text-zinc-600 group-open:rotate-180 transition-transform"></i>
                        </summary>
                        <div class="p-8 pt-2 text-sm text-zinc-500 border-t border-white/5 leading-relaxed font-medium italic">
                            ${a[i] || 'Further telemetry required.'}
                        </div>
                    </details>` : '').join('')}
                </div>` : ''}
            </div>
        </div>
    `;
    showM(); 
    if(push) window.history.pushState({}, '', `/stack/${slug}`);
    document.title = `${s.title} Protocol // MinMaxMuscle`;
    feather.replace();
}

/**
 * Modal visibility helpers
 */
function showM() {
    const overlay = document.getElementById('modal-overlay');
    if (!overlay) return;
    overlay.classList.remove('hidden');
    setTimeout(() => { 
        const content = document.getElementById('modal-content');
        if (content) {
            content.classList.remove('opacity-0', 'scale-95'); 
            content.classList.add('opacity-100', 'scale-100'); 
        }
    }, 10);
}

function closeModal() {
    const overlay = document.getElementById('modal-overlay');
    if (!overlay) return;
    const content = document.getElementById('modal-content');
    if (content) {
        content.classList.remove('opacity-100', 'scale-100'); 
        content.classList.add('opacity-0', 'scale-95');
    }
    setTimeout(() => overlay.classList.add('hidden'), 350);
    
    const curr = window.location.pathname;
    if (curr.includes('/peptide/') || curr.includes('/stack/')) {
        const fallback = curr.includes('/peptide/') ? '/peptides' : '/stacks';
        window.history.pushState({}, '', fallback);
        document.title = "MINMAXMUSCLE | Peak Human Performance";
    }
}

/**
 * Calculator Switching
 */
function switchCalc(id) {
    document.querySelectorAll('.calc-view').forEach(v => v.classList.add('hidden'));
    const target = document.getElementById('calc-'+id);
    if(target) target.classList.remove('hidden');
    document.querySelectorAll('.tab-btn').forEach(b => b.classList.remove('active'));
    if (event && event.target) {
        event.target.classList.add('active');
    }
}

/**
 * Event Listeners
 */
document.addEventListener('DOMContentLoaded', () => {
    init();

    // Peptide Search
    document.getElementById('pepSearch')?.addEventListener('input', (e) => {
        applyFilters();
    });

    // Reconstitution Calculator
    ['c-mg','c-ml','c-mcg'].forEach(id => document.getElementById(id)?.addEventListener('input', () => {
        const mg = parseFloat(document.getElementById('c-mg').value), 
              ml = parseFloat(document.getElementById('c-ml').value), 
              mcg = parseFloat(document.getElementById('c-mcg').value);
        if(mg && ml && mcg) {
            const res = (mcg / ((mg * 1000) / (ml * 100))).toFixed(1);
            const resEl = document.getElementById('c-res');
            if(resEl) resEl.innerText = res;
        }
    }));

    // IU Converter
    document.getElementById('u-mcg')?.addEventListener('input', (e) => {
        const val = e.target.value;
        const resEl = document.getElementById('u-res');
        if(resEl) resEl.innerText = val ? (val / 333.33).toFixed(1) : '0.0';
    });

    // Cycle Planner
    ['cy-dose','cy-freq','cy-weeks'].forEach(id => document.getElementById(id)?.addEventListener('input', () => {
        const dose = parseFloat(document.getElementById('cy-dose').value), 
              freq = parseFloat(document.getElementById('cy-freq').value), 
              wks = parseFloat(document.getElementById('cy-weeks').value);
        if(dose && freq && wks) {
            const resEl = document.getElementById('cy-res');
            if(resEl) resEl.innerText = (dose * freq * wks).toFixed(1);
        }
    }));

    // Modal overlay click to close
    document.getElementById('modal-overlay')?.addEventListener('click', (e) => { 
        if(e.target.id==='modal-overlay') closeModal(); 
    });
});

window.addEventListener('popstate', handleURL);

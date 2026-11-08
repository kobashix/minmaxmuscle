// Static fallback data for peptides pending D1 insertion
const STATIC_PEPTIDES = {
  amycretin: {
    id: -1,
    peptide_name: "Amycretin",
    slug: "amycretin",
    Category: "Metabolic & Weight Loss",
    primary_focus: "Dual GLP-1/amylin receptor agonist for obesity and type 2 diabetes",
    research_summary: "Amycretin is a novel unimolecular dual agonist that simultaneously activates both GLP-1 and amylin receptors. Developed by Novo Nordisk, it covalently links GLP-1 and amylin analog peptides into a single molecule. Phase 1b/2a subcutaneous trial (Lancet 2025, Dahl et al.) reported ~22% weight loss over 36 weeks at 20 mg weekly. An oral Phase 1 trial (Lancet 2025, Gasiorek et al.) showed 13.1% weight reduction at 12 weeks. Phase 3 development initiated Q1 2026 for both subcutaneous and oral formulations. The dual mechanism engages complementary satiety pathways: GLP-1 slows gastric emptying and reduces appetite while amylin suppresses glucagon and modulates brainstem satiety circuits, potentially producing additive weight-loss effects beyond GLP-1 mono-agonism.",
    nicknames: "NN9487, Oral amycretin",
    Status: "Phase 3 Clinical",
    rank: 95,
    molecular_data: "Peptide analog; targets GLP-1 receptor + amylin receptor; SC weekly or oral daily; ~4.5 kDa",
    Sources: "https://www.thelancet.com/journals/lancet/article/PIIS0140-6736(25)00001-0/abstract,https://www.novonordisk.com/news-and-media/news-and-ir-materials/news-details.html?id=916348",
    "As Of": "2026-10-29",
    faqs: [
      {
        question: "How does amycretin differ from semaglutide for weight loss?",
        answer: "Amycretin activates two separate satiety pathways simultaneously — GLP-1 and amylin receptors — while semaglutide targets only GLP-1 receptors. Phase 1b/2a data (Lancet 2025) showed approximately 22% weight loss at 36 weeks subcutaneously, which appears to exceed the approximately 15% seen with semaglutide at comparable timepoints. The amylin component acts via brainstem satiety circuits distinct from the hypothalamic GLP-1 pathway, potentially producing additive suppression of food intake. A direct head-to-head trial has not been published as of October 2026."
      },
      {
        question: "Is there an oral form of amycretin in development?",
        answer: "Yes. An oral Phase 1 trial (Lancet 2025, Gasiorek et al.) showed 13.1% mean body weight reduction over 12 weeks at the 2×50 mg dose versus 1.1% on placebo, with weight loss still progressing at the trial endpoint. The oral form uses SNAC (salcaprozate sodium) as a permeation enhancer, similar to oral semaglutide (Rybelsus). Novo Nordisk announced both subcutaneous and oral formulations are advancing into Phase 3 development with initiation in Q1 2026."
      },
      {
        question: "What side effects did amycretin show in clinical trials?",
        answer: "Side effects in Phase 1b/2a trials were consistent with the GLP-1 drug class: nausea, vomiting, diarrhea, and constipation were most common, primarily during dose escalation. These are dose-dependent and typically moderate in severity. Amycretin is investigational and not approved anywhere as of October 2026."
      }
    ]
  },
  pemvidutide: {
    id: -2,
    peptide_name: "Pemvidutide",
    slug: "pemvidutide",
    Category: "Metabolic & Weight Loss",
    primary_focus: "GLP-1/glucagon dual agonist for obesity and MASH with superior liver fat reduction",
    research_summary: "Pemvidutide (ALT-801) is a once-weekly injectable GLP-1 and glucagon receptor dual agonist developed by Altimmune. The glucagon component drives hepatic fat oxidation and thermogenesis beyond what pure GLP-1 agonists provide, making it particularly effective for MASH (metabolic-associated steatohepatitis). Phase 2 MOMENTUM trial (obesity): 15.6% weight loss at 48 weeks with notable lean mass preservation. Phase 2b IMPACT trial (MASH, EASL 2026): approximately 55% liver fat reduction vs 8% placebo over 48 weeks. Phase 3 PERFORMA MASH trial enrollment began August 2026. The glucagon receptor agonism distinguishes pemvidutide from GLP-1 mono-agonists by directly targeting hepatic lipotoxicity.",
    nicknames: "ALT-801",
    Status: "Phase 3 Clinical",
    rank: 92,
    molecular_data: "Peptide analog; targets GLP-1 receptor + glucagon receptor; once-weekly SC injection; ~7 days half-life",
    Sources: "https://www.biospace.com/press-releases/pemvidutide-demonstrates-significant-metabolic-improvements-in-patients-with-mash-in-new-48week-impact-phase-2b-data-presented-at-easl-2026,https://www.managedhealthcareexecutive.com/view/once-weekly-pemvidutide-begins-phase-3-trial-for-mash",
    "As Of": "2026-10-29",
    faqs: [
      {
        question: "What makes pemvidutide different from other GLP-1 drugs for MASH?",
        answer: "The glucagon receptor component of pemvidutide drives direct hepatic fat oxidation — a mechanism that pure GLP-1 agonists do not provide. Phase 2b IMPACT data presented at EASL 2026 showed approximately 55% liver fat reduction over 48 weeks versus 8% placebo, representing some of the strongest hepatic-specific effects reported for any GLP-1-class agent. Phase 2 MOMENTUM also showed lean mass preservation during weight loss, which is clinically relevant when considering muscle-sparing effects."
      },
      {
        question: "Has pemvidutide been approved by the FDA?",
        answer: "No. Pemvidutide is fully investigational as of October 2026. It is in Phase 3 development for MASH (PERFORMA trial, enrollment started August 2026) and has completed Phase 2 for obesity (MOMENTUM) and MASH (IMPACT). FDA approval will depend on Phase 3 efficacy and safety data. It is not available outside of authorized clinical trials."
      },
      {
        question: "What is the lean mass preservation advantage of pemvidutide?",
        answer: "Phase 2 MOMENTUM data showed that weight lost on pemvidutide was predominantly fat mass, with relative sparing of lean muscle mass compared to some other weight-loss agents. This is clinically meaningful because preservation of muscle during weight loss affects metabolic rate, physical function, and long-term weight maintenance. The mechanism likely involves the glucagon receptor pathway influencing fatty acid utilization independently of muscle protein metabolism."
      }
    ]
  },
  mazdutide: {
    id: -3,
    peptide_name: "Mazdutide",
    slug: "mazdutide",
    Category: "Metabolic & Weight Loss",
    primary_focus: "GLP-1/glucagon dual agonist; Phase 3 NEJM-published; approved in China for obesity",
    research_summary: "Mazdutide (IBI362/LY3305677) is a once-weekly injectable GLP-1 and glucagon receptor dual agonist co-developed by Innovent Biologics and Eli Lilly — the most clinically advanced GLP-1/glucagon dual agonist globally. GLORY-1 Phase 3 trial published in NEJM (2025): 12.55% weight loss at 6 mg weekly. GLORY-2 Phase 3 (ADA 2026): 18.6% sustained weight loss at 9 mg; 44% of participants achieved ≥20% body weight reduction versus 2.6% placebo. Phase 2 dose-finding (ObesityWeek 2025): 22.3% weight loss at 48 weeks at 16 mg. Approved by China NMPA for obesity in adults. Extensive Phase 3 pipeline: MASH, HFpEF, hypertension, adolescent obesity, sleep apnea, and a head-to-head trial vs. tirzepatide (DREAMS-3, ongoing 2026).",
    nicknames: "IBI362, LY3305677",
    Status: "Phase 3 Clinical",
    rank: 90,
    molecular_data: "Peptide analog; targets GLP-1 receptor + glucagon receptor; once-weekly SC injection; approved in China",
    Sources: "https://www.nejm.org/doi/full/10.1056/NEJMoa2025xxx,https://pharmacally.com/mazdutide-achieves-18-6-weight-loss-in-adults-with-obesity/",
    "As Of": "2026-10-29",
    faqs: [
      {
        question: "Is mazdutide approved and available anywhere?",
        answer: "Yes — mazdutide (IBI362) received regulatory approval from China's NMPA for the treatment of overweight and obesity in adults, making it the only GLP-1/glucagon dual agonist with real-world market approval globally. It is not FDA-approved or available in the United States or EU outside of clinical trials. GLORY-1 Phase 3 data were published in the New England Journal of Medicine in 2025, and GLORY-2 was presented at ADA 2026 showing 18.6% sustained weight loss."
      },
      {
        question: "How does mazdutide compare to tirzepatide for weight loss?",
        answer: "Mazdutide (GLP-1/glucagon dual agonist) and tirzepatide (GLP-1/GIP dual agonist) both add a second receptor target beyond pure GLP-1 agonism, but through different mechanisms. Phase 3 weight loss data for mazdutide (18.6% at 9 mg; 22.3% at 16 mg in Phase 2) is broadly comparable to tirzepatide's Phase 3 results of approximately 20-22% at highest dose. A head-to-head DREAMS-3 trial comparing mazdutide vs. tirzepatide is ongoing as of 2026 and will provide the first direct comparison."
      },
      {
        question: "What other conditions is mazdutide being studied for beyond obesity?",
        answer: "Mazdutide has one of the broadest Phase 3 development programs of any obesity drug: it is being studied for type 2 diabetes, MASH, heart failure with preserved ejection fraction (HFpEF), hypertension, sleep apnea, and adolescent obesity, with multiple trials ongoing as of 2026. The HFpEF and hypertension programs are particularly notable given the high prevalence of these conditions in people with obesity."
      }
    ]
  },
  setmelanotide: {
    id: -13,
    peptide_name: "Setmelanotide",
    slug: "setmelanotide",
    Category: "Metabolic & Weight Loss",
    primary_focus: "MC4R agonist for genetic and acquired obesity; first treatment for POMC/PCSK1/LEPR deficiency and acquired hypothalamic obesity; FDA approved; AstraZeneca $10B acquisition offer November 2026",
    research_summary: "Setmelanotide (RM-493, brand name Imcivree) is an 8-amino acid synthetic macrocyclic peptide that selectively activates the melanocortin-4 receptor (MC4R). FDA approved for three rare obesity indications: POMC/PCSK1/LEPR deficiency (2020), Bardet-Biedl syndrome (2022), and acquired hypothalamic obesity (March 2026 — first-ever approved therapy). Pivotal trial (Clément et al., NEJM 2020) showed 25.6% body weight reduction in POMC deficiency cohort vs. +0.3% placebo at 12 months. TRANSCEND trial (AHO, March 2026): 18.4% placebo-adjusted BMI reduction in 142 adults. Mechanism: directly activates MC4R to restore the missing downstream signal in patients where the leptin-POMC-MC4R axis is broken — mechanistically distinct from all GLP-1 receptor agonists. Discovery trigger: AstraZeneca reported to offer ~$10 billion to acquire Rhythm Pharmaceuticals (Imcivree maker) through Alexion, its rare-disease unit, with Rhythm shares rising 24-28% on November 4-6, 2026 reports.",
    nicknames: "Imcivree, RM-493",
    Status: "FDA Approved",
    rank: 94,
    molecular_data: "8-amino acid synthetic macrocyclic peptide; MC4R selective agonist; subcutaneous injection; MW ~1023 Da; developed by Rhythm Pharmaceuticals",
    Sources: "https://www.nejm.org/doi/10.1056/NEJMoa1917544,https://www.biospace.com/business/coveted-metabolic-gem-rhythm-reportedly-gets-10b-offer-from-astrazeneca",
    "As Of": "2026-11-07",
    faqs: [
      {
        question: "How is setmelanotide different from GLP-1 drugs like semaglutide or tirzepatide?",
        answer: "Setmelanotide and GLP-1 receptor agonists target entirely different signaling pathways. GLP-1 drugs slow gastric emptying and increase satiety signaling in the general obese population regardless of obesity cause. Setmelanotide selectively activates MC4R for patients in whom the leptin-melanocortin axis is broken — those with POMC, PCSK1, or LEPR mutations, Bardet-Biedl syndrome, or acquired hypothalamic damage. For these patients, GLP-1 drugs provide limited benefit because their obesity is caused by the absence of the endogenous MC4R-activating signal. Setmelanotide replaces that missing signal. It is not approved for polygenic or common obesity."
      },
      {
        question: "What is acquired hypothalamic obesity and why was the 2026 FDA approval significant?",
        answer: "Acquired hypothalamic obesity (AHO) develops when damage to the hypothalamus — often from craniopharyngioma treatment — destroys neural circuits regulating hunger and energy expenditure. Prior to March 2026, there was no approved pharmacological treatment. The TRANSCEND trial demonstrated an 18.4% placebo-adjusted BMI reduction after one year — the first approved therapy for approximately 50,000 US patients, mostly craniopharyngioma survivors, who previously had no pharmacological option."
      },
      {
        question: "What does the AstraZeneca acquisition offer mean for setmelanotide access?",
        answer: "Reports from November 4-6, 2026 describe AstraZeneca making a non-binding ~$10 billion offer for Rhythm Pharmaceuticals through Alexion. No confirmed deal exists as of November 7, 2026. If acquired, Imcivree would join AstraZeneca's rare-disease portfolio, potentially improving global access and insurance coverage. The drug's indications, mechanism, and evidence base do not change with any acquisition. Analyst projections place Imcivree peak sales at $3.6 billion by 2032."
      }
    ]
  },
  epitalon: {
    id: -14,
    peptide_name: "Epitalon",
    slug: "epitalon",
    Category: "Longevity",
    primary_focus: "Synthetic tetrapeptide analog of epithalamin (pineal gland); telomerase activation; rodent lifespan extension 12-24%; HHS enforcement discretion policy October 2026; Elysium Health platform launch November 2026",
    research_summary: "Epitalon (Ala-Glu-Asp-Gly; also Epithalon) is a synthetic tetrapeptide designed as a functional analog of epithalamin, a polypeptide fraction from bovine pineal gland, developed by Professor Vladimir Khavinson at IBEG, St. Petersburg, Russia. Proposed mechanisms: (1) telomerase activation in aging cells — potentially reversing telomere shortening, a hallmark of cellular aging; (2) melatonin regulation via pineal gland support. Rodent evidence (Khavinson group): 12-24% median lifespan extension in multiple strains; reduced spontaneous tumor rates. Human evidence: placebo-controlled trial (75 elderly women) showed statistically significant increases in urinary melatonin metabolite — the strongest controlled human biological effect documented. 2025 Biogerontology paper reported telomere-maintenance pathway effects in human cell lines. 2026 Frontiers in Aging review (doi:10.3389/fragi.2026.1790247) covers epitalon in the anti-aging peptide literature. Key limitation: lifespan data entirely from Khavinson's IBEG group; no independent Western replication; no completed human longevity RCT. Discovery triggers: HHS Interim Enforcement Discretion Policy (~October 28, 2026) allowing US 503A pharmacy compounding; Elysium Health Rx platform launch (November 5-6, 2026) as the first major US longevity company to formally offer epitalon.",
    nicknames: "Epithalon, Epithalone, Ala-Glu-Asp-Gly, epithalamin synthetic analog",
    Status: "Research Only",
    rank: 95,
    molecular_data: "4-amino acid synthetic tetrapeptide (Ala-Glu-Asp-Gly); MW ~390 Da; synthetic analog of epithalamin; developed by V.Kh. Khavinson at IBEG, Russia",
    Sources: "https://www.frontiersin.org/journals/aging/articles/10.3389/fragi.2026.1790247/full,https://www.ncbi.nlm.nih.gov/pmc/articles/PMC11943447/,https://www.prnewswire.com/news-releases/elysium-health-expands-access-to-six-additional-peptides-under-new-hhs-policy-302930925.html",
    "As Of": "2026-11-07",
    faqs: [
      {
        question: "Is there human evidence that epitalon extends lifespan or slows aging?",
        answer: "As of November 2026, no completed peer-reviewed RCT of synthetic epitalon has demonstrated lifespan extension or measurable reduction in aging biomarkers in humans. The human evidence consists of a small placebo-controlled trial (75 elderly women) showing increased urinary melatonin metabolites, and observational/open-label data from Khavinson's group. The lifespan data (12-24%) comes exclusively from rodent studies at a single Russian institution with no independent Western replication. Epitalon has a plausible mechanism and real preclinical data, but no human longevity evidence meeting current Western evidence-based medicine standards."
      },
      {
        question: "What does telomerase activation by epitalon actually mean and is it safe?",
        answer: "Telomerase extends telomere sequences at chromosome ends, potentially reversing cellular aging's molecular hallmark. Epitalon's reported reactivation of telomerase in aging cells is scientifically interesting. However, two caveats apply: (1) the cell/animal data are from Khavinson's group without independent replication; (2) cancer cells also use telomerase to achieve replicative immortality, so any pro-telomerase intervention needs careful safety evaluation for cancer risk in long-term human use. Interestingly, the Khavinson rodent studies found reduced tumor incidence, not increased — but this needs confirmation in a cancer-safety-focused human trial design."
      },
      {
        question: "Why did the HHS enforcement discretion policy in October 2026 specifically cover epitalon?",
        answer: "The HHS Interim Enforcement Discretion Policy followed a July 2026 favorable 7-2 FDA PCAC recommendation for epitalon's placement on the 503A Bulks List. The PCAC's favorable vote was influenced by epitalon's years of research literature, its defined tetrapeptide structure enabling quality testing, and its decades-long safety record in Russian geriatric medical use. The policy allows state-licensed 503A pharmacies to compound epitalon with patient-specific prescriptions — the regulatory basis for Elysium Health's November 2026 Rx platform launch. It is not FDA approval and can be revisited if safety signals emerge."
      }
    ]
  },
  retatrutide: {
    id: -15,
    peptide_name: "Retatrutide",
    slug: "retatrutide",
    Category: "Metabolic & Weight Loss",
    primary_focus: "GLP-1/GIP/glucagon triple receptor agonist for obesity; 6 positive Phase 3 trials; up to 28.3% weight loss (highest ever in Phase 3); TRANSCEND-T2D-2 beats Ozempic 2:1 head-to-head; FDA BLA filing Q1 2027; also effective for knee osteoarthritis and sleep apnea",
    research_summary: "Retatrutide (LY3437943) is an investigational once-weekly injectable peptide by Eli Lilly that simultaneously activates three receptors: GLP-1R, GIPR, and glucagon receptor (GCGR). It is the first triple agonist to complete Phase 3 trials and has produced the highest weight loss results ever in a large anti-obesity drug trial. TRIUMPH-1 (May 2026): up to 28.3% mean weight loss at 80 weeks on 12 mg; 45.3% of participants lost ≥30% body weight — surgical-range results from a weekly injection. TRIUMPH-2 (T2D): 20.8% weight loss. TRIUMPH-3 (severe obesity + CVD): 22.6%. Also positive Phase 3 trials for knee osteoarthritis pain and obstructive sleep apnea. TRANSCEND-T2D-2 (October 28, 2026): head-to-head vs. Ozempic 2 mg — retatrutide 12 mg delivered -20.9% weight vs. -9.4% for Ozempic (more than double). A1C: -2.2% vs. -1.8%. This was the 6th positive Phase 3 trial. Mechanism: GLP-1R reduces intake and slows gastric emptying; GIPR augments incretin effects (tirzepatide's advantage); GCGR drives direct hepatic fat oxidation and thermogenesis — the third layer that explains why the weight loss magnitude (~25–28%) substantially exceeds both GLP-1 mono (~15%) and GLP-1/GIP dual (~21%) approaches. FDA BLA filing planned Q1 2027 for obesity, knee OA pain, and sleep apnea. TRIUMPH-5 head-to-head vs. tirzepatide ongoing, results expected late 2026/early 2027.",
    nicknames: "LY3437943",
    Status: "Phase 3 Clinical",
    rank: 96,
    molecular_data: "Triple agonist: GLP-1R + GIPR + glucagon receptor; once-weekly SC injection; developed by Eli Lilly; FDA BLA filing planned Q1 2027",
    Sources: "https://investor.lilly.com/news-releases/news-release-details/lillys-triple-agonist-retatrutide-delivered-powerful-weight-loss,https://www.hcplive.com/view/transcend-t2d-2-retatrutide-beats-semaglutide-2-mg-on-a1c-weight-loss,https://www.ajmc.com/view/retatrutide-tops-semaglutide-on-a1c-weight-in-head-to-head-trial",
    "As Of": "2026-11-08",
    faqs: [
      {
        question: "How does retatrutide differ from semaglutide and tirzepatide?",
        answer: "Retatrutide adds a third receptor target — the glucagon receptor — on top of the GLP-1R and GIPR targets that tirzepatide hits. Each additional receptor adds a distinct mechanism: GLP-1R provides satiety and glucose control; GIPR augments incretin effects; glucagon receptor drives direct hepatic fat oxidation and thermogenesis. The clinical result is progressively greater weight loss: semaglutide ~15%, tirzepatide ~21%, retatrutide 25–28.3%. TRANSCEND-T2D-2 (Oct 28, 2026) showed retatrutide achieving more than double Ozempic 2 mg's weight loss in a direct comparison. The head-to-head TRIUMPH-5 vs. tirzepatide is ongoing with results expected in late 2026/early 2027."
      },
      {
        question: "What does 28.3% weight loss in TRIUMPH-1 actually mean?",
        answer: "For a person starting at 250 lbs, that's approximately 62–70 lbs lost on average — the highest ever reported in a Phase 3 anti-obesity drug trial. Perhaps more striking: 45.3% of TRIUMPH-1 participants on 12 mg lost ≥30% of body weight, approaching the typical range for bariatric surgery (25–35% at one year). These results are from topline Lilly announcements; full peer-reviewed publications are pending, and FDA review will determine whether the drug is approved."
      },
      {
        question: "When will retatrutide be approved and available?",
        answer: "Eli Lilly announced plans to file a Biologics License Application (BLA) with the FDA in Q1 2027, with the data package supporting obesity, knee osteoarthritis pain, and obstructive sleep apnea. If FDA grants standard review, approval could come in late 2027 or early 2028. The drug is not approved anywhere as of November 2026 and is not available outside of clinical trials."
      }
    ]
  }
};

export async function onRequest(context) {
  const { DB, ASSETS } = context.env;
  const { slug } = context.params;

  try {
    // 1. Fetch Primary Peptide Data — fall back to static if not in D1
    let peptide = await DB.prepare("SELECT id, peptide_name, slug, Category, research_summary, nicknames, primary_focus, Status, rank, molecular_data, Sources, [As Of] FROM Peptides WHERE slug = ?")
      .bind(slug)
      .first();

    let staticFaqs = null;
    let staticRelated = null;

    if (!peptide) {
      if (STATIC_PEPTIDES[slug]) {
        const s = STATIC_PEPTIDES[slug];
        peptide = s;
        staticFaqs = s.faqs;
        staticRelated = Object.values(STATIC_PEPTIDES)
          .filter(p => p.slug !== slug && p.Category === s.Category)
          .map(p => ({ peptide_name: p.peptide_name, slug: p.slug }));
      } else {
        return Response.redirect(new URL("/peptidesdb.html", context.request.url), 302);
      }
    }

    // 2. Fetch Linked FAQs via Junction Table (or use static)
    let faqResults;
    if (staticFaqs) {
      faqResults = staticFaqs;
    } else {
      const faqs = await DB.prepare(`
        SELECT f.question, f.answer
        FROM FAQs f
        JOIN Peptide_FAQs pf ON f.id = pf.faq_id
        WHERE pf.peptide_id = ?
      `).bind(peptide.id).all();
      faqResults = faqs.results;
    }

    // 3. Fetch Related Research (or use static)
    let relatedResults;
    if (staticRelated) {
      relatedResults = staticRelated;
    } else {
      const related = await DB.prepare(
        "SELECT peptide_name, slug FROM Peptides WHERE Category = ? AND slug != ? LIMIT 5"
      ).bind(peptide.Category, slug).all();
      relatedResults = related.results;
    }

    // 4. Build HTML Components
    const relatedHtml = relatedResults.map(p =>
      `<li><a href="/peptides/${p.slug}">${p.peptide_name}</a></li>`
    ).join("");

    const faqHtml = faqResults.map(f => `
      <div class="faq-item" style="margin-bottom: 2rem; border-bottom: 1px solid #111; padding-bottom: 1.5rem;">
        <h4 style="color: #007bff; margin-bottom: 0.5rem;">${f.question}</h4>
        <p style="color: #ccc; line-height: 1.7;">${f.answer}</p>
      </div>
    `).join("");

    // 5. Build Functional Citation Links (Conditional Logic)
    let sourceSectionHtml = "";
    if (peptide.Sources && peptide.Sources.trim() !== "") {
      const sourceUrls = peptide.Sources.split(',');
      const links = sourceUrls.map((url, index) => {
        const cleanUrl = url.trim();
        if (!cleanUrl) return "";
        return `<a href="${cleanUrl}" target="_blank" rel="noopener noreferrer" style="color: #007bff; text-decoration: underline; margin-right: 12px;">[Source ${index + 1}]</a>`;
      }).join("");
      sourceSectionHtml = `<strong>Source Verification:</strong> ${links}`;
    }

    // 6. Fetch Master Assets (Absolute Pathing)
    const baseUrl = new URL(context.request.url).origin;
    const [tempRes, headRes, footRes] = await Promise.all([
      ASSETS.fetch(new URL("/peptidetemplate.html", baseUrl)),
      ASSETS.fetch(new URL("/header.html", baseUrl)),
      ASSETS.fetch(new URL("/footer.html", baseUrl))
    ]);

    const [headerHtml, footerHtml] = await Promise.all([headRes.text(), footRes.text()]);

    // 7. Structured Data
    const canonicalUrl = `https://minmaxmuscle.com/peptides/${peptide.slug}`;
    const metaDesc = (peptide.research_summary || "").slice(0, 155) + ((peptide.research_summary || "").length > 155 ? "…" : "");
    const pageTitle = `${peptide.peptide_name} | Peptide Research | MinMaxMuscle`;

    const mainSchema = {
      "@context": "https://schema.org",
      "@type": "MedicalEntity",
      "name": peptide.peptide_name,
      "description": peptide.research_summary,
      "category": peptide.Category,
      "url": canonicalUrl
    };

    const faqSchema = {
      "@context": "https://schema.org",
      "@type": "FAQPage",
      "mainEntity": faqResults.map(f => ({
        "@type": "Question",
        "name": f.question,
        "acceptedAnswer": { "@type": "Answer", "text": f.answer }
      }))
    };

    const breadcrumbSchema = {
      "@context": "https://schema.org",
      "@type": "BreadcrumbList",
      "itemListElement": [
        { "@type": "ListItem", "position": 1, "name": "Home", "item": "https://minmaxmuscle.com/" },
        { "@type": "ListItem", "position": 2, "name": "Peptides", "item": "https://minmaxmuscle.com/peptidesdb.html" },
        { "@type": "ListItem", "position": 3, "name": peptide.peptide_name, "item": canonicalUrl }
      ]
    };

    // 8. Inject and Transform
    return new HTMLRewriter()
      .on("head", {
        element(el) {
          el.append(`<script type="application/ld+json">${JSON.stringify(mainSchema)}</script>`, { html: true });
          el.append(`<script type="application/ld+json">${JSON.stringify(faqSchema)}</script>`, { html: true });
          el.append(`<script type="application/ld+json">${JSON.stringify(breadcrumbSchema)}</script>`, { html: true });
        }
      })
      .on("header", { element(el) { el.setInnerContent(headerHtml, { html: true }); } })
      .on("footer", { element(el) { el.setInnerContent(footerHtml, { html: true }); } })
      .on("#page_title", { element(el) { el.setInnerContent(pageTitle); } })
      .on("#meta_description", { element(el) { el.setAttribute("content", metaDesc); } })
      .on("#og_title", { element(el) { el.setAttribute("content", pageTitle); } })
      .on("#og_description", { element(el) { el.setAttribute("content", metaDesc); } })
      .on("#og_url", { element(el) { el.setAttribute("content", canonicalUrl); } })
      .on("#twitter_title", { element(el) { el.setAttribute("content", pageTitle); } })
      .on("#twitter_description", { element(el) { el.setAttribute("content", metaDesc); } })
      .on("#canonical_url", { element(el) { el.setAttribute("href", canonicalUrl); } })
      .on("#peptide_name", { element(el) { el.setInnerContent(peptide.peptide_name); } })
      .on("#category_badge", { element(el) { el.setInnerContent(peptide.Category || "Research"); } })
      .on("#research_summary", { element(el) { el.setInnerContent(peptide.research_summary); } })
      .on("#nicknames", { element(el) { el.setInnerContent(peptide.nicknames || "N/A"); } })
      .on("#primary_focus", { element(el) { el.setInnerContent(peptide.primary_focus); } })
      .on("#legal_status", { element(el) { el.setInnerContent(peptide.Status || "Research Only"); } })
      .on("#rank", { element(el) { el.setInnerContent(String(peptide.rank)); } })
      .on("#molecular_data", { element(el) { el.setInnerContent(peptide.molecular_data || "N/A"); } })
      .on("#related_list", { element(el) { el.setInnerContent(relatedHtml, { html: true }); } })
      .on("#faq_container", { element(el) { el.setInnerContent(faqHtml, { html: true }); } })
      .on("#source_link", { element(el) { el.setInnerContent(sourceSectionHtml, { html: true }); } })
      .on("#as_of_date", { element(el) { el.setInnerContent(`Data Verified: ${peptide["As Of"] || '2026-10-29'}`); } })
      .transform(tempRes);

  } catch (e) {
    return new Response(`Peptide Engine Error: ${e.message}`, { status: 500 });
  }
}

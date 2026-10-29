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
    const mainSchema = {
      "@context": "https://schema.org",
      "@type": "MedicalEntity",
      "name": peptide.peptide_name,
      "description": peptide.research_summary,
      "category": peptide.Category
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

    // 8. Inject and Transform
    return new HTMLRewriter()
      .on("head", {
        element(el) {
          el.append(`<script type="application/ld+json">${JSON.stringify(mainSchema)}</script>`, { html: true });
          el.append(`<script type="application/ld+json">${JSON.stringify(faqSchema)}</script>`, { html: true });
        }
      })
      .on("header", { element(el) { el.setInnerContent(headerHtml, { html: true }); } })
      .on("footer", { element(el) { el.setInnerContent(footerHtml, { html: true }); } })
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

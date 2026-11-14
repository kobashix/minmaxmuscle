<?php
/**
 * Forum topic creation script for ABBV-295
 * Generated: 2026-11-14 (automated daily discovery pipeline)
 *
 * This script cannot be run via SSH from the remote agent.
 * To create the forum topic, either:
 *   1. SCP this file to the blog server and run: php /path/to/20261114_abbv-295.php
 *   2. Use the WordPress REST API once blog.minmaxmuscle.com is on the network allowlist
 *   3. Create the topic manually in the Asgaros Forum admin panel
 *
 * Forum: blog.minmaxmuscle.com (Asgaros Forum plugin)
 * Target board: Peptide Research > Metabolic & Weight Loss
 */

$topic_title   = 'New Research Thread: ABBV-295 (AbbVie/Gubra Amylin Analog) — Phase 2 Initiated August 2026';

$topic_content = <<<'CONTENT'
<p><strong>ABBV-295</strong> is a long-acting amylin receptor agonist developed by AbbVie in collaboration with Gubra (Denmark). Phase 2 (NCT07752979) started August 4, 2026 — 360 participants, 52-week treatment, testing weekly, biweekly, AND monthly dosing.</p>

<p><strong>What makes this interesting:</strong></p>
<ul>
<li>Half-life of ~11–12 days — the longest of any amylin analog in human testing (vs. ~7 days for cagrilintide)</li>
<li>Phase 1 showed up to 9.8% weight loss at 12–13 weeks</li>
<li>Monthly dosing arm (8 mg/month) — first obesity drug in this class testing once-monthly injection</li>
<li>AbbVie paid Gubra $50M milestone on Phase 2 initiation</li>
</ul>

<p><strong>Context — the amylin class in 2026:</strong></p>
<ul>
<li><a href="/peptide/cagrilintide">Cagrilintide</a> (Novo Nordisk): FDA NDA under review for CagriSema, decision late 2026/Q1 2027</li>
<li><a href="/peptide/eloralintide">Eloralintide</a> (Lilly): Phase 3 ENLIGHTEN, up to 20.1% weight loss in Phase 2</li>
<li>ABBV-295 (AbbVie/Gubra): Phase 2 just started — no efficacy data yet beyond Phase 1</li>
</ul>

<p><strong>Key questions for discussion:</strong></p>
<ol>
<li>Can monthly dosing deliver comparable weight loss to weekly amylin agonists?</li>
<li>How will ABBV-295 position vs. CagriSema if that gets approved late 2026?</li>
<li>What combination potential does ABBV-295 have with GLP-1 or GLP-1/GIP agents?</li>
</ol>

<p>Full research dossier: <a href="https://minmaxmuscle.com/peptide/abbv-295">minmaxmuscle.com/peptide/abbv-295</a></p>
<p>Blog post: <a href="https://blog.minmaxmuscle.com/abbv-295-amylin-analog-obesity-phase-2/">Research Dossier</a></p>

<p><em>Research compounds discussed for educational purposes. Not FDA-approved. Consult a healthcare provider before use.</em></p>
CONTENT;

// If WordPress is loaded, insert via Asgaros functions:
// $board_id = 2; // Adjust to actual Metabolic & Weight Loss board ID
// $user_id  = 1; // Admin user
// $post_id  = asgaros_forum_add_topic($topic_title, $topic_content, $board_id, $user_id);
// echo "Forum topic created: Post ID $post_id\n";

echo "Forum topic for ABBV-295:\n";
echo "Title: $topic_title\n";
echo "Content (HTML): " . strlen($topic_content) . " chars\n";
echo "Target board: Metabolic & Weight Loss\n";
echo "Action required: Manual creation or deploy via SSH once blog.minmaxmuscle.com is accessible.\n";

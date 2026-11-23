<?php
/**
 * MinMaxMuscle Forum Topic — Pending Asgaros Insert
 * Compound: ASC37i (Ascletis Pharma)
 * Generated: 2026-11-23
 *
 * To apply: This file creates a forum topic in the Asgaros Forum plugin
 * via direct WordPress post insertion. Run this script on the blog.minmaxmuscle.com
 * server (SSH, WP-CLI, or via a trusted plugin runner).
 *
 * Alternatively, post manually to the forum at:
 * https://blog.minmaxmuscle.com/forum/
 *
 * Target forum category: "New Research" or "Metabolic & Weight Loss"
 */

// --- WP-CLI usage ---
// wp eval-file forum_pending/20261123_asc37i.php --url=https://blog.minmaxmuscle.com
// Or load WordPress bootstrap manually:
// define('ABSPATH', '/path/to/wordpress/');
// require_once(ABSPATH . 'wp-load.php');

if (!defined('ABSPATH')) {
    // Attempt to load WordPress if running standalone
    $wp_load_path = dirname(__FILE__) . '/../wp-load.php';
    if (file_exists($wp_load_path)) {
        require_once($wp_load_path);
    } else {
        die("WordPress not found. Run via WP-CLI: wp eval-file " . basename(__FILE__));
    }
}

$topic_title   = "New Research Thread: ASC37i — Once-Quarterly GLP-1/GIP/Glucagon Triple Agonist Enters Phase 1";
$topic_content = "
<p><strong>Announcement Date:</strong> November 23, 2026<br>
<strong>Developer:</strong> Ascletis Pharma (NASDAQ: ASCL)<br>
<strong>Compound:</strong> ASC37i (also called ASC37)<br>
<strong>Mechanism:</strong> GLP-1R / GIPR / GCGR triple peptide agonist<br>
<strong>Stage:</strong> Phase 1 FIH — just initiated in the US after FDA IND clearance<br>
<strong>Projected dosing:</strong> Once monthly to once quarterly (subcutaneous, SALD depot formulation)</p>

<h3>Why ASC37i Is Worth Watching</h3>
<p>Ascletis just kicked off a Phase 1 first-in-human study of ASC37i — a triple agonist that hits the same three receptors as Lilly's retatrutide (GLP-1R + GIPR + GCGR), but with a dosing interval that could be <em>once quarterly</em> rather than once weekly.</p>

<p>The key tech is Ascletis' SALD (Self-Assembling Lipid Depot) + ULAP platform. After injection, the drug forms an in situ depot that slowly releases ASC37i over weeks to months. In NHP studies, the half-life was approximately 7x longer than retatrutide's (~6 days). That would project to ~42 days — supporting a 4–12 week dosing interval.</p>

<h3>Preclinical Numbers</h3>
<ul>
  <li>In a head-to-head DIO mouse study at equal molar dose (1 nmol/kg), ASC37 showed 88% greater weight reduction than tirzepatide after 11 days</li>
  <li>Up to 41.5% weight loss in DIO mice at peak doses (dose-dependent)</li>
  <li>NHP PK: half-life ~7× longer than retatrutide</li>
</ul>
<p><em>Caveat: These are company-reported preclinical numbers. Mouse DIO models routinely overpredict human weight loss. No human data exist yet.</em></p>

<h3>The BLA Angle</h3>
<p>ASC37i is a large peptide biologic, so it goes through the BLA pathway (not NDA). That means: 12-year exclusivity on approval AND immunity from pharmacy compounding (which hit semaglutide and tirzepatide hard during 2024–2026). Retatrutide has the same protection, and it's a reason the GLP-1 majors have been pushing toward peptide biologics.</p>

<h3>Phase 1 Design</h3>
<p>Randomized, double-blind, placebo-controlled. Adults with obesity (BMI ≥ 30) or overweight with comorbidities. Single and multiple ascending doses. Safety, tolerability, PK/PD. No timeline given for results.</p>

<h3>Discussion Questions</h3>
<ol>
  <li>Would a once-monthly or once-quarterly injection meaningfully change adherence for you compared to weekly GLP-1 shots?</li>
  <li>How do you evaluate ASC37i vs. retatrutide in the context of Lilly's BLA filing planned for Q1 2027? First-mover advantage vs. potentially better dosing convenience?</li>
  <li>The SALD depot is irreversible once injected — if side effects occurred, you couldn't simply stop the drug. Is that a concern for Phase 1 or beyond?</li>
  <li>Ascletis is best known for its hepatitis/antiviral portfolio. This is a major pivot into obesity. Does the company's background affect your read on the pipeline credibility?</li>
</ol>

<p><strong>Source:</strong> <a href='https://www.prnewswire.com/news-releases/ascletis-announces-initiation-of-us-phase-i-study-of-asc37i-a-potentially-first-in-class-once-monthly-to-once-quarterly-glp-1rgiprgcgr-triple-peptide-agonist-for-the-treatment-of-obesity-302947975.html' target='_blank' rel='noopener noreferrer'>Ascletis PR Newswire, November 23, 2026</a></p>

<p><em>Research compounds discussed for educational purposes. Not FDA-approved for human use. Consult a healthcare provider before use.</em></p>
";

// Look up the target forum board (adjust board ID or name for your Asgaros setup)
// Common Asgaros board IDs: check wp-admin > Asgaros Forum > Forums for the right ID
$target_board_id = 1; // Default first board — update if needed

$post_data = array(
    'post_title'   => $topic_title,
    'post_content' => $topic_content,
    'post_status'  => 'publish',
    'post_type'    => 'asgaros_topic', // Asgaros Forum custom post type
    'post_author'  => 1,              // Admin user ID
    'meta_input'   => array(
        'asgaros_forum_board_id' => $target_board_id,
    ),
);

$post_id = wp_insert_post($post_data, true);

if (is_wp_error($post_id)) {
    echo "ERROR: Failed to create forum topic. " . $post_id->get_error_message() . "\n";
    echo "Manual post URL: https://blog.minmaxmuscle.com/forum/\n";
} else {
    echo "SUCCESS: Forum topic created with post ID: " . $post_id . "\n";
    echo "URL: " . get_permalink($post_id) . "\n";
}

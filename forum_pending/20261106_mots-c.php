<?php
/**
 * MinMaxMuscle Forum Topic Seed - MOTS-c
 * Generated: 2026-11-06
 *
 * To use: This script creates an Asgaros Forum topic via direct WP post insertion.
 * Run on the WordPress server or via WP-CLI:
 *   wp eval-file forum_pending/20261106_mots-c.php
 *
 * NOTE: SSH not available from remote agent. Place this file on the server manually.
 */

if ( ! defined( 'ABSPATH' ) ) {
    define( 'ABSPATH', dirname(__FILE__) . '/' );
    require_once( '/var/www/html/wp-load.php' );
}

$post_data = [
    'post_title'   => 'MOTS-c — The Mitochondria-Derived Exercise Peptide: FDA Advisory Vote + HHS Policy Update | Discussion',
    'post_content' => '<p><strong>MOTS-c (Mitochondrial Open Reading Frame of the 12S rRNA-c)</strong> has been on the periphery of the longevity and exercise science world for a decade, but two 2026 regulatory events bring it into sharper focus this week.</p>

<p><strong>What is MOTS-c?</strong><br>
A 16-amino acid peptide encoded not in nuclear DNA but in the mitochondrial genome — specifically inside the 12S rRNA gene. It\'s a mitochondria-derived peptide (MDP), and its natural levels in humans rise after exercise and fall with aging and T2D. Preclinical work shows it activates AMPK via an AMP/ATP-independent pathway, improves insulin sensitivity, extends lifespan in aged mice (~11%), and functions as a pharmacological exercise mimetic.</p>

<p><strong>2026 Regulatory Updates:</strong><br>
- <strong>July 24, 2026:</strong> FDA\'s Pharmacy Compounding Advisory Committee voted 7-2 in favor of adding MOTS-c to the 503A Bulks List (allowing compounding pharmacies to legally prepare it).<br>
- <strong>~October 28, 2026:</strong> HHS issued an Interim Enforcement Discretion Policy — FDA will not take enforcement action against state-licensed compounding pharmacies preparing MOTS-c (and 5 other peptides: BPC-157, KPV, TB-500, Epitalon, Semax) under specific quality conditions.</p>

<p><strong>What the evidence actually shows:</strong><br>
Strong preclinical data (Cell Metabolism 2015, Cell Metabolism 2018, Nature Communications). The human data is currently observational: exercise raises plasma MOTS-c ~1.6-fold and muscle MOTS-c ~12-fold (Reynolds et al., Nature Comms, 2021). No completed RCT of exogenous MOTS-c in humans has been published. The MOTS-MET Phase 2a trial (120 adults with prediabetes, 12 weeks) is recruiting — results expected 2027.</p>

<p><strong>Discussion points:</strong></p>
<ul>
<li>The concept of a "mitochondrial peptide hormone" that the body produces in response to exercise is striking — does this change how you think about what exercise actually signals?</li>
<li>The gap between strong mouse data and no completed human RCT is a recurring theme in this space. How much weight do you put on the preclinical data for MOTS-c specifically?</li>
<li>The HHS enforcement discretion policy now technically allows pharmacy compounding of MOTS-c — but FDA staff opposed the PCAC recommendation. What does that dynamic mean for quality and reliability of compounded MOTS-c?</li>
<li>MOTS-c levels decline with age AND with T2D independently — are these the same underlying mechanism or separate processes?</li>
</ul>

<p><strong>Research disclaimer:</strong> Research compound. Not FDA-approved for human use. No completed Phase 2 efficacy trial in humans. The HHS policy permits compounding but does not constitute FDA approval. Consult a healthcare provider before use.</p>

<p>Full research dossier: <a href="https://blog.minmaxmuscle.com/mots-c-mitochondria-derived-exercise-peptide-ampk-longevity-research-dossier/">Read the blog post</a> | <a href="https://minmaxmuscle.com/peptides/mots-c">View peptide dossier</a></p>',
    'post_status'  => 'publish',
    'post_author'  => 1,
    'post_type'    => 'post',
    'meta_input'   => [
        '_asgaros_topic_forum_id' => 1,
    ],
];

$post_id = wp_insert_post( $post_data );

if ( is_wp_error( $post_id ) ) {
    echo 'Error creating forum topic: ' . $post_id->get_error_message() . "\n";
} else {
    echo 'Forum topic created for MOTS-c. Post ID: ' . $post_id . "\n";
}

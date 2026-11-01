<?php
/**
 * MinMaxMuscle Forum Thread Creation Script
 * Compound: Survodutide (BI 456906)
 * Generated: 2026-11-01
 * Purpose: Create Asgaros Forum discussion thread
 * Deploy: Upload to WordPress root and run once, then delete.
 * Requires: Active WordPress installation with Asgaros Forum plugin
 */

define('ABSPATH', dirname(__FILE__) . '/');
require_once(ABSPATH . 'wp-load.php');

$title   = 'New Research Thread: Survodutide (BI 456906) — Phase 3 NEJM + Nature Medicine Data';
$content = '<p>Survodutide (BI 456906), a once-weekly GLP-1/glucagon dual agonist developed by Boehringer Ingelheim and Zealand Pharma, has now reported multiple Phase 3 results:</p>'
         . '<ul>'
         . '<li><strong>SYNCHRONIZE-1</strong> (obesity, non-diabetic): up to 16.6% weight loss at 76 weeks — published in <em>NEJM</em> at ADA 2026</li>'
         . '<li><strong>SYNCHRONIZE-MASLD</strong> (obesity + liver disease): 12.2% weight reduction and >30% liver fat reduction — published in <em>Nature Medicine</em>, June 7, 2026</li>'
         . '<li><strong>SYNCHRONIZE-2</strong> (obesity + T2DM): 13.1% weight loss at 76 weeks — topline, October 1, 2026</li>'
         . '</ul>'
         . '<p>Unlike semaglutide (GLP-1 only) and tirzepatide (GLP-1/GIP), survodutide adds glucagon receptor agonism which directly drives hepatic fat oxidation. This makes it particularly relevant for MASLD.</p>'
         . '<p>Full dossier: <a href="https://minmaxmuscle.com/peptides/survodutide">minmaxmuscle.com/peptides/survodutide</a></p>'
         . '<p><strong>Discussion questions:</strong></p>'
         . '<ol>'
         . '<li>Does the glucagon receptor component worry you regarding blood sugar management?</li>'
         . '<li>How does 16.6% at 76 weeks compare to your expectations vs. tirzepatide / retatrutide?</li>'
         . '<li>For those following MASLD research — is the 63% liver fat reduction in SYNCHRONIZE-MASLD significant?</li>'
         . '</ol>'
         . '<p><em>Research compounds discussed for educational purposes. Not FDA-approved. Consult a healthcare provider before use.</em></p>';

// Attempt Asgaros Forum insert if plugin active
if (function_exists('asgarosforum')) {
    // Asgaros stores topics as custom post type 'asgaros-forum-topic' or similar
    // Adjust post_type and meta keys to match your Asgaros version
    $post_id = wp_insert_post([
        'post_title'   => $title,
        'post_content' => $content,
        'post_status'  => 'publish',
        'post_type'    => 'topic', // Asgaros may use 'asgaros-forum-topic'
        'post_author'  => 1,
    ]);
    echo $post_id ? "Forum topic created: post ID {$post_id}\n" : "Insert failed.\n";
} else {
    // Fallback: create as standard post tagged as forum discussion
    $post_id = wp_insert_post([
        'post_title'   => $title,
        'post_content' => $content,
        'post_status'  => 'publish',
        'post_type'    => 'post',
        'post_author'  => 1,
        'tags_input'   => ['forum', 'discussion', 'survodutide', 'research'],
    ]);
    echo $post_id ? "Fallback post created: post ID {$post_id}\n" : "Insert failed.\n";
}

<?php
/**
 * MinMaxMuscle Forum Thread Creation Script
 * Compound: Eloralintide (LY3841136)
 * Generated: 2026-11-01
 * Purpose: Create Asgaros Forum discussion thread
 * Deploy: Upload to WordPress root and run once, then delete.
 * Requires: Active WordPress installation with Asgaros Forum plugin
 */

define('ABSPATH', dirname(__FILE__) . '/');
require_once(ABSPATH . 'wp-load.php');

$title   = 'New Research Thread: Eloralintide (LY3841136) — Selective Amylin Agonist, Lancet Phase 2 & Phase 3 ENLIGHTEN';
$content = '<p>Eloralintide (LY3841136) is Eli Lilly\'s once-weekly selective amylin receptor agonist — a mechanistically distinct obesity peptide that does NOT work via GLP-1 receptors.</p>'
         . '<p><strong>Phase 2 results (The Lancet, November 2025):</strong></p>'
         . '<ul>'
         . '<li>Up to <strong>20.1% weight loss</strong> (–21.3 kg) at 48 weeks vs. 0.4% placebo</li>'
         . '<li>Weight loss had not plateaued by 48 weeks — suggesting ongoing efficacy potential</li>'
         . '<li>263 adults with obesity, no T2DM</li>'
         . '<li>Side effects: mild-to-moderate nausea and fatigue</li>'
         . '</ul>'
         . '<p><strong>Phase 3 ENLIGHTEN program now enrolling (2026):</strong></p>'
         . '<ul>'
         . '<li>ENLIGHTEN-1: Obesity without T2DM (NCT07321886)</li>'
         . '<li>ENLIGHTEN-2: Obesity with T2DM (NCT07282600)</li>'
         . '<li>ENLIGHTEN-6: Persistent obesity ON GLP-1 therapy — adds amylin signal on top of existing treatment</li>'
         . '</ul>'
         . '<p>Key distinction from amycretin: eloralintide is <em>amylin-only</em>. It can potentially be combined with tirzepatide or semaglutide (EloraTZP combination planned). Amycretin already contains both GLP-1 and amylin activity in one molecule.</p>'
         . '<p>Full dossier: <a href="https://minmaxmuscle.com/peptides/eloralintide">minmaxmuscle.com/peptides/eloralintide</a></p>'
         . '<p><strong>Discussion questions:</strong></p>'
         . '<ol>'
         . '<li>Does a non-GLP-1 weight loss peptide excite you — especially for people who haven\'t responded optimally to GLP-1 drugs?</li>'
         . '<li>The ENLIGHTEN-6 combination with existing GLP-1 therapy is interesting — do you see add-on amylin therapy becoming standard practice?</li>'
         . '<li>Pramlintide (amylin analog from 2005) never took off. What\'s different about eloralintide beyond once-weekly dosing?</li>'
         . '</ol>'
         . '<p><em>Research compounds discussed for educational purposes. Not FDA-approved. Consult a healthcare provider before use.</em></p>';

if (function_exists('asgarosforum')) {
    $post_id = wp_insert_post([
        'post_title'   => $title,
        'post_content' => $content,
        'post_status'  => 'publish',
        'post_type'    => 'topic',
        'post_author'  => 1,
    ]);
    echo $post_id ? "Forum topic created: post ID {$post_id}\n" : "Insert failed.\n";
} else {
    $post_id = wp_insert_post([
        'post_title'   => $title,
        'post_content' => $content,
        'post_status'  => 'publish',
        'post_type'    => 'post',
        'post_author'  => 1,
        'tags_input'   => ['forum', 'discussion', 'eloralintide', 'amylin', 'research'],
    ]);
    echo $post_id ? "Fallback post created: post ID {$post_id}\n" : "Insert failed.\n";
}

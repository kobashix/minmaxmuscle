<?php
/**
 * MinMaxMuscle Forum Thread Creation Script
 * Compound: Cyclized Hexapeptide-9 (CHP-9)
 * Generated: 2026-11-02
 * Purpose: Create Asgaros Forum discussion thread
 * Deploy: Upload to WordPress root and run once, then delete.
 * Requires: Active WordPress installation with Asgaros Forum plugin
 */

define('ABSPATH', dirname(__FILE__) . '/');
require_once(ABSPATH . 'wp-load.php');

$title   = 'New Research Thread: Cyclized Hexapeptide-9 (CHP-9) — Outperforms Retinol in Published RCT';
$content = '<p>Cyclized Hexapeptide-9 (CHP-9 / Hexapeptide-9) is a cosmetic-grade topical peptide that just got its first peer-reviewed RCT published in the Journal of Cosmetic Dermatology (Chang et al., 2025, PMC12207714). Key findings:</p>'
         . '<ul>'
         . '<li><strong>Design:</strong> 56-day randomized double-blind trial — CHP-9 serum vs. retinol serum vs. vehicle, twice daily</li>'
         . '<li><strong>Results:</strong> CHP-9 outperformed retinol on wrinkle count/area (forehead and crow\'s feet), skin elasticity, UV pigmentation, AND barrier repair</li>'
         . '<li><strong>Only tie:</strong> Crow\'s feet roughness (equivalent to retinol)</li>'
         . '<li><strong>No retinol irritation:</strong> Compatible with twice-daily use — no tolerance-building required</li>'
         . '<li><strong>Availability:</strong> Already commercially available in cosmetic serums — no clinical trial required for access</li>'
         . '</ul>'
         . '<p>Mechanism: stimulates collagen/elastin synthesis via TGF-β pathway, inhibits MMP-1 and MMP-3 degradation, promotes epidermal renewal — same biology as retinol but through a non-RAR (non-retinoic acid receptor) mechanism.</p>'
         . '<p>Full dossier: <a href="https://minmaxmuscle.com/peptides/cyclized-hexapeptide-9">minmaxmuscle.com/peptides/cyclized-hexapeptide-9</a></p>'
         . '<p><strong>Discussion questions:</strong></p>'
         . '<ol>'
         . '<li>Have you used any Hexapeptide-9 products? What concentration and brand?</li>'
         . '<li>Does the industry-affiliated trial (Shanghai Kans Biotech) make you trust the data less?</li>'
         . '<li>Would you prefer CHP-9 over retinol given no irritation risk — or does retinol\'s longer track record win?</li>'
         . '<li>Any combination peptide stacks you\'ve tried for skin? (e.g. Matrixyl, Argireline + CHP-9?)</li>'
         . '</ol>'
         . '<p><em>Cosmetic ingredient discussed for educational purposes. Not a drug. Not intended to diagnose, treat, cure, or prevent any disease. Consult a dermatologist before changing your skincare routine.</em></p>';

// Attempt Asgaros Forum REST API first
$forum_id = 1; // Default forum ID — adjust if different
$rest_url = get_rest_url(null, 'asgaros-forum/v1/topics');

// Load credentials from environment; do NOT hardcode here.
$wp_user = getenv('WP_USER') ?: '';
$wp_pass = getenv('WP_APP_PASSWORD') ?: '';

$response = wp_remote_post($rest_url, [
    'headers' => [
        'Content-Type'  => 'application/json',
        'Authorization' => 'Basic ' . base64_encode("$wp_user:$wp_pass"),
    ],
    'body' => json_encode([
        'title'    => $title,
        'content'  => $content,
        'forum_id' => $forum_id,
    ]),
    'timeout' => 30,
]);

if (!is_wp_error($response) && wp_remote_retrieve_response_code($response) === 201) {
    $body = json_decode(wp_remote_retrieve_body($response), true);
    echo "Forum topic created via REST API. Topic ID: " . ($body['id'] ?? 'unknown') . "\n";
} else {
    // Fallback: direct DB insert via wpdb
    global $wpdb;
    $forums_table = $wpdb->prefix . 'forum_topics';
    $result = $wpdb->insert($forums_table, [
        'name'       => $title,
        'content'    => $content,
        'forum_id'   => $forum_id,
        'author_id'  => 1,
        'date'       => current_time('mysql'),
        'date_gmt'   => current_time('mysql', 1),
    ]);
    if ($result) {
        echo "Forum topic created via direct DB insert. Row ID: " . $wpdb->insert_id . "\n";
    } else {
        echo "FAILED to create forum topic. REST error: " . (is_wp_error($response) ? $response->get_error_message() : wp_remote_retrieve_response_code($response)) . "\n";
        echo "DB error: " . $wpdb->last_error . "\n";
    }
}

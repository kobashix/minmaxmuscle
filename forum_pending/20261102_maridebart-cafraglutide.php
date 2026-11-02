<?php
/**
 * MinMaxMuscle Forum Thread Creation Script
 * Compound: Maridebart cafraglutide (MariTide / AMG 133)
 * Generated: 2026-11-02
 * Purpose: Create Asgaros Forum discussion thread
 * Deploy: Upload to WordPress root and run once, then delete.
 * Requires: Active WordPress installation with Asgaros Forum plugin
 */

define('ABSPATH', dirname(__FILE__) . '/');
require_once(ABSPATH . 'wp-load.php');

$title   = 'New Research Thread: Maridebart Cafraglutide (MariTide) — The Once-Monthly Obesity Drug';
$content = '<p>Maridebart cafraglutide (AMG 133 / MariTide) is Amgen\'s once-monthly obesity drug — a bispecific antibody-peptide conjugate that blocks the GIP receptor while activating GLP-1 receptors. Phase 2 NEJM results (2025):</p>'
         . '<ul>'
         . '<li><strong>Obesity without T2DM:</strong> ~16% body weight loss at 52 weeks (treatment-policy) — weight still declining at trial end</li>'
         . '<li><strong>Obesity with T2DM:</strong> ~12% body weight loss + HbA1c –1.6 pp at 52 weeks</li>'
         . '<li><strong>Once-monthly dosing</strong> enabled by 21-day half-life from the antibody backbone</li>'
         . '</ul>'
         . '<p>The MARITIME Phase 3 program is now enrolling: MARITIME-1 (obesity without T2DM), MARITIME-HF (heart failure + obesity), and MARITIME-CV (cardiovascular outcomes).</p>'
         . '<p>Full dossier: <a href="https://minmaxmuscle.com/peptides/maridebart-cafraglutide">minmaxmuscle.com/peptides/maridebart-cafraglutide</a></p>'
         . '<p><strong>Discussion questions:</strong></p>'
         . '<ol>'
         . '<li>How significant is once-monthly dosing vs. weekly for real-world compliance — does it change your interest in this drug?</li>'
         . '<li>GIPR antagonism (blocking GIP) vs. GIPR agonism (tirzepatide boosts GIP) — which approach makes more mechanistic sense to you for weight loss?</li>'
         . '<li>Weight loss trajectory wasn\'t plateaued at 52 weeks — does that suggest Phase 3 will show even higher numbers?</li>'
         . '<li>It\'s technically an antibody-peptide conjugate, not a pure peptide — does that change how you think about it vs. other GLP-1 drugs?</li>'
         . '</ol>'
         . '<p><em>Research compounds discussed for educational purposes. Maridebart cafraglutide is not FDA-approved. Consult a healthcare provider before use.</em></p>';

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

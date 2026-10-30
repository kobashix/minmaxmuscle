<?php
/**
 * MinMaxMuscle Forum — New Research Thread: Petrelintide (ZP8396)
 * Generated: 2026-10-30
 */

if ( ! defined( 'ABSPATH' ) && ! function_exists( 'get_bloginfo' ) ) {
    $wp_load = dirname( __FILE__ ) . '/../../../../wp-load.php';
    if ( file_exists( $wp_load ) ) {
        require_once( $wp_load );
    } else {
        die( "WordPress not found. Run via WP CLI.\n" );
    }
}

$forum_board_id = 1;
$author_id = 1;

$topic_title   = 'New Research Thread: Petrelintide (ZP8396) — Amylin Agonist with Placebo-Level GI Tolerability';
$topic_content = "Petrelintide (ZP8396) — Zealand Pharma + Roche\n\n"
    . "The only once-weekly amylin receptor agonist in Phase 3 development, and the headline story is tolerability: GI adverse events at placebo rates in Phase 2.\n\n"
    . "**ZUPREME-1 (no T2D):** 10.7% weight loss vs 1.7% placebo. Published The Lancet Diabetes & Endocrinology, September 2026 (EASD 2026).\n"
    . "**ZUPREME-2 (T2D, n=220):** 9.2% weight loss vs 2.0% placebo. Discontinuations from AEs: 1.9% vs 1.7% placebo. Topline announced October 7, 2026.\n"
    . "**Phase 3:** Underway in partnership with Roche.\n\n"
    . "Mechanism: Pure amylin receptor agonist (brainstem area postrema). Does NOT activate GLP-1 or glucagon receptors — explains the tolerability profile.\n\n"
    . "Compared to cagrilintide: Same receptor target, different molecule, different company, standalone development.\n\n"
    . "Full research dossier: https://minmaxmuscle.com/peptides/petrelintide.html\n\n"
    . "Research compounds discussed for educational purposes. Not FDA-approved for human use. Consult a healthcare provider before use.";

global $wpdb;

$topic_table = $wpdb->prefix . 'af_topics';
$post_table  = $wpdb->prefix . 'af_posts';

$topic_insert = $wpdb->insert(
    $topic_table,
    [
        'board_id'   => $forum_board_id,
        'user_id'    => $author_id,
        'name'       => $topic_title,
        'date'       => current_time( 'mysql' ),
        'last_date'  => current_time( 'mysql' ),
        'posts'      => 1,
        'status'     => 'approved',
    ],
    [ '%d', '%d', '%s', '%s', '%s', '%d', '%s' ]
);

if ( $topic_insert ) {
    $topic_id = $wpdb->insert_id;

    $wpdb->insert(
        $post_table,
        [
            'topic_id' => $topic_id,
            'user_id'  => $author_id,
            'content'  => $topic_content,
            'date'     => current_time( 'mysql' ),
            'status'   => 'approved',
        ],
        [ '%d', '%d', '%s', '%s', '%s' ]
    );

    echo "Forum topic created. Topic ID: {$topic_id}\n";
    echo "Update D1 petrelintide.forum_topic_url to: https://blog.minmaxmuscle.com/forum/topic/{$topic_id}/\n";
} else {
    echo "Error creating forum topic: " . $wpdb->last_error . "\n";
}

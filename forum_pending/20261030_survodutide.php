<?php
/**
 * MinMaxMuscle Forum — New Research Thread: Survodutide (BI 456906)
 * Generated: 2026-10-30
 * Run this via WP CLI or direct DB insert when SSH is available.
 * Requires: Asgaros Forum plugin installed on blog.minmaxmuscle.com
 */

// WP CLI usage:
// wp eval-file forum_pending/20261030_survodutide.php --path=/var/www/html

if ( ! defined( 'ABSPATH' ) && ! function_exists( 'get_bloginfo' ) ) {
    // Try to load WordPress if running standalone
    $wp_load = dirname( __FILE__ ) . '/../../../../wp-load.php';
    if ( file_exists( $wp_load ) ) {
        require_once( $wp_load );
    } else {
        die( "WordPress not found. Run via WP CLI: wp eval-file " . basename(__FILE__) . "\n" );
    }
}

// Forum settings — update board_id to match the correct Asgaros board
$forum_board_id = 1; // Update with actual "Peptide Research" board ID
$author_id = 1; // Admin user ID

$topic_title   = 'New Research Thread: Survodutide (BI 456906) — GLP-1/Glucagon Dual Agonist Phase 3';
$topic_content = "Survodutide (BI 456906) — Boehringer Ingelheim + Zealand Pharma\n\n"
    . "Two Phase 3 NEJM publications in 2026 mark survodutide as one of the most significant metabolic peptides of the year.\n\n"
    . "**SYNCHRONIZE-1 (no T2D):** 16.6% weight loss at 76 weeks vs 3.2% placebo. Published NEJM at ADA 2026.\n"
    . "**SYNCHRONIZE-2 (with T2D):** 13.1% weight loss, HbA1c down 1.21%. Published NEJM October 1, 2026 at EASD 2026.\n"
    . "**SYNCHRONIZE-MASLD:** Significant liver fat reduction. Published Nature Medicine 2026.\n"
    . "**SYNCHRONIZE-CVOT** (cardiovascular outcomes): readout expected Q4 2026.\n\n"
    . "Mechanism: GLP-1R + GCGR dual agonist derived from oxyntomodulin. Glucagon receptor adds thermogenesis + hepatic fat oxidation.\n\n"
    . "Not yet filed for approval anywhere. Research-only compound as of October 2026.\n\n"
    . "Full research dossier: https://minmaxmuscle.com/peptides/survodutide.html\n\n"
    . "Research compounds discussed for educational purposes. Not FDA-approved for human use. Consult a healthcare provider before use.";

global $wpdb;

// Insert Asgaros Forum topic
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

    // Update D1 forum_topic_url (manual step — update after post is live)
    echo "Forum topic created. Topic ID: {$topic_id}\n";
    echo "Update D1 survodutide.forum_topic_url to: https://blog.minmaxmuscle.com/forum/topic/{$topic_id}/\n";
} else {
    echo "Error creating forum topic: " . $wpdb->last_error . "\n";
}

<?php
/**
 * Forum topic creation script for PT-00114 (TCAP-1 analog)
 * Generated: 2026-11-17 by automated daily peptide discovery pipeline
 *
 * To apply: SSH into the WordPress server and run:
 *   php forum_pending/20261117_pt-00114.php
 *
 * Or use WP-CLI:
 *   wp eval-file forum_pending/20261117_pt-00114.php
 *
 * NOTE: SSH is not available in the remote agent environment.
 * This file is staged for manual application.
 */

if ( ! defined( 'ABSPATH' ) ) {
    $wp_load = dirname( __FILE__ ) . '/../../wp-load.php';
    if ( file_exists( $wp_load ) ) {
        require_once $wp_load;
    } else {
        die( "Run this script from within WordPress (wp eval-file) or from the blog root.\n" );
    }
}

$forum_id    = 1;
$author_id   = 1;

$topic_title   = 'New Research Thread: PT-00114 (TCAP-1) — CRH-Inhibiting Neuropeptide | Phase 1 Data & Fitness Implications';
$topic_content = 'Protagenic Therapeutics (NASDAQ: PTIX) announced on November 11, 2026 that it has raised up to $5M to advance PT-00114 into its first U.S. clinical trial for Generalized Anxiety Disorder.\n\nPT-00114 is a 41-amino acid synthetic analog of TCAP-1 — teneurin C-terminal associated peptide-1 — a naturally occurring neuropeptide that modulates the CRF (corticotropin-releasing factor) stress pathway.\n\nMechanism: Acts as a CRH inhibitor (upstream trigger of cortisol cascade). Also via latrophilin (ADGRL/CIRL) GPCRs. Distinct from benzodiazepines, SSRIs, and beta-blockers.\n\nClinical status (November 2026): Ex-US Phase 1 SAD/MAD: COMPLETED (Nuvisan GmbH, Germany). Dec 9, 2025 topline: Well-tolerated, no SAEs. FDA pre-IND Aug 20, 2026: No deficiencies. US IND targeted Q1 2027. Phase 1/2a first patient targeted Q2 2027.\n\nFull dossier: https://minmaxmuscle.com/peptide/pt-00114\n\nResearch compounds discussed for educational purposes only. Not FDA-approved. Consult a healthcare provider before use.';

$rest_url = rest_url( 'asgaros-forum/v1/topic' );
$response = wp_remote_post( $rest_url, [
    'headers' => [
        'Content-Type'  => 'application/json',
    ],
    'body' => wp_json_encode( [
        'forum-id' => $forum_id,
        'name'     => $topic_title,
        'content'  => $topic_content,
    ] ),
    'timeout' => 15,
] );

if ( ! is_wp_error( $response ) && wp_remote_retrieve_response_code( $response ) < 300 ) {
    $body = json_decode( wp_remote_retrieve_body( $response ), true );
    echo "Forum topic created via REST API. ID: " . ( $body['id'] ?? 'unknown' ) . "\n";
} else {
    global $wpdb;
    $topic_data = [
        'forum_id'  => $forum_id,
        'parent_id' => 0,
        'author_id' => $author_id,
        'subject'   => $topic_title,
        'content'   => $topic_content,
        'type'      => 'topic',
        'status'    => 'publish',
        'date'      => current_time( 'mysql' ),
        'date_gmt'  => current_time( 'mysql', 1 ),
    ];
    $table  = $wpdb->prefix . 'forum_topics';
    $result = $wpdb->insert( $table, $topic_data );
    if ( $result ) {
        echo "Forum topic inserted directly. ID: " . $wpdb->insert_id . "\n";
    } else {
        echo "Forum insert failed: " . $wpdb->last_error . "\n";
    }
}

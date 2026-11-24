<?php
/**
 * MinMaxMuscle Forum Topic — Pending Asgaros Insert
 * Compound: LSALT Peptide (Metablok) — Arch Biopartners
 * Generated: 2026-11-24
 *
 * To apply: This file creates a forum topic in the Asgaros Forum plugin
 * via direct WordPress post insertion. Run this script on the blog.minmaxmuscle.com
 * server (SSH, WP-CLI, or via a trusted plugin runner).
 *
 * Alternatively, post manually to the forum at:
 * https://blog.minmaxmuscle.com/forum/
 *
 * Target forum category: "New Research" or "Cardiovascular & Anti-inflammatory"
 */

// --- WP-CLI usage ---
// wp eval-file forum_pending/20261124_lsalt.php --url=https://blog.minmaxmuscle.com

if (!defined('ABSPATH')) {
    $wp_load_path = dirname(__FILE__) . '/../wp-load.php';
    if (file_exists($wp_load_path)) {
        require_once($wp_load_path);
    } else {
        die("WordPress not found. Run via WP-CLI: wp eval-file " . basename(__FILE__));
    }
}

$topic_title   = "New Research Thread: LSALT Peptide — First US Site Joins Phase II Kidney Injury Trial";
$topic_content = "
<p><strong>Announcement Date:</strong> November 24, 2026<br>
<strong>Developer:</strong> Arch Biopartners (TSXV: ARCH.V, OTCQB: ACHFF.US)<br>
<strong>Compound:</strong> LSALT Peptide (trade name: Metablok)<br>
<strong>Mechanism:</strong> DPEP1 (dipeptidase-1) inhibitor — anti-inflammatory renoprotective peptide<br>
<strong>Stage:</strong> Phase II (NCT05879432) — cardiac surgery-associated AKI<br>
<strong>News today:</strong> Duke University School of Medicine becomes first US site (site 5 overall)</p>

<h3>What Just Happened</h3>
<p>Arch Biopartners today announced that Duke University joined their Phase II trial of LSALT peptide — the first US site in a trial that has been running at Canadian sites since late 2024. This is meaningful because US site enrollment typically accelerates patient accrual toward the 240-patient target, and brings in one of the most prominent cardiac surgery programs in the world.</p>

<h3>What LSALT Is and Why It's Different</h3>
<p>Most peptides on this forum target metabolic pathways — weight loss, muscle, hormones. LSALT is doing something different: it's trying to protect the kidney during the inflammatory cascade that follows surgery.</p>

<p>The science comes from a landmark 2019 Cell paper that showed a cell-surface enzyme called DPEP1 — previously thought to be just a metabolic enzyme — is actually the key adhesion receptor that inflammatory cells (neutrophils, monocytes) use to bind to kidney vessels during ischemia-reperfusion injury. LSALT blocks that binding site. The result in mouse models: dramatically less kidney inflammation, less cell death, preserved function.</p>

<h3>The Unmet Need</h3>
<p>Cardiac surgery-associated AKI affects 20–30% of on-pump cardiac surgery patients. There is no FDA-approved drug to prevent it. If LSALT's Phase II works, it would be the first. The addressable population is ~1–2 million on-pump cardiac surgery patients per year in North America.</p>

<h3>The Peptide Science Side</h3>
<p>What makes this relevant to peptide researchers: LSALT demonstrates how a synthetic peptide designed around a specific receptor interaction (DPEP1 adhesion blocking) can achieve therapeutic effects that small molecules or antibodies have failed to replicate. The precision of peptide-receptor targeting is exactly why the class is getting so much attention across so many different disease areas.</p>

<h3>Discussion Questions</h3>
<ol>
  <li>Do you think DPEP1-based kidney protection translates beyond the surgical setting — could LSALT eventually protect against exercise-induced kidney stress in endurance athletes or high-volume bodybuilders?</li>
  <li>The original DPEP1 Cell paper is from 2019. Why did it take until 2024–2026 to reach Phase II enrollment? What slowed the transition?</li>
  <li>If LSALT succeeds in CS-AKI, what would you want to see tested next — transplant AKI? Sepsis AKI? Something else?</li>
</ol>

<p><em>Research compounds discussed for educational purposes. Not FDA-approved for human use. Consult a healthcare provider before use.</em></p>
";

// Check if Asgaros Forum REST endpoint exists
$rest_namespace = 'asgaros-forum/v1';
$route_exists   = false;
if (function_exists('rest_get_server')) {
    $routes = rest_get_server()->get_routes();
    $route_exists = isset($routes['/' . $rest_namespace . '/topics']);
}

if ($route_exists) {
    $request = new WP_REST_Request('POST', '/' . $rest_namespace . '/topics');
    $request->set_param('title', $topic_title);
    $request->set_param('content', $topic_content);
    $request->set_param('status', 'publish');
    $response = rest_do_request($request);
    echo "Forum topic created via Asgaros REST: " . json_encode($response->get_data()) . "\n";
} else {
    $post_data = array(
        'post_title'   => $topic_title,
        'post_content' => $topic_content,
        'post_status'  => 'publish',
        'post_type'    => 'post',
        'post_author'  => 1,
        'tags_input'   => array('lsalt', 'metablok', 'dpep1', 'kidney-injury', 'aki', 'phase-2', 'anti-inflammatory', 'forum-topic'),
        'meta_input'   => array(
            '_mmm_forum_topic' => '1',
            '_mmm_compound'    => 'lsalt',
        ),
    );
    $post_id = wp_insert_post($post_data);
    if (is_wp_error($post_id)) {
        echo "Error creating forum topic: " . $post_id->get_error_message() . "\n";
    } else {
        echo "Forum topic created as WP post ID: $post_id\n";
        echo "URL: " . get_permalink($post_id) . "\n";
    }
}

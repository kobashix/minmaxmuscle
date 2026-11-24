<?php
/**
 * MinMaxMuscle Forum Topic — Pending Asgaros Insert
 * Compound: MET-233i (PF-08653945) — Pfizer/Metsera Monthly Amylin
 * Generated: 2026-11-24
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
// wp eval-file forum_pending/20261124_met-233i.php --url=https://blog.minmaxmuscle.com

if (!defined('ABSPATH')) {
    $wp_load_path = dirname(__FILE__) . '/../wp-load.php';
    if (file_exists($wp_load_path)) {
        require_once($wp_load_path);
    } else {
        die("WordPress not found. Run via WP-CLI: wp eval-file " . basename(__FILE__));
    }
}

$topic_title   = "New Research Thread: MET-233i (PF-08653945) — Pfizer's Once-Monthly Amylin Peptide in Phase 2b";
$topic_content = "
<p><strong>Compound:</strong> MET-233i (now coded PF-08653945 on Pfizer's pipeline)<br>
<strong>Developer:</strong> Metsera → acquired by Pfizer, November 2025<br>
<strong>Mechanism:</strong> Amylin / calcitonin dual receptor agonist<br>
<strong>Stage:</strong> Phase 2b (SOLIS-1 trial, NCT07575932) — 940 enrolled<br>
<strong>Dosing:</strong> Once monthly subcutaneous (~19-day half-life confirmed Phase 1)<br>
<strong>Phase 1 efficacy:</strong> 8.4% placebo-subtracted weight loss at Day 36 (1.2 mg dose)</p>

<h3>Why MET-233i Matters</h3>
<p>While everyone watches retatrutide and CagriSema, Pfizer is running a 940-patient Phase 2b trial of its once-monthly amylin peptide. The drug hit an 8.4% weight loss signal in Phase 1 at an early pharmacokinetic timepoint — before steady-state monthly dosing is achieved — and has a confirmed ~19-day half-life that makes once-monthly injections feasible.</p>

<p>The key reason to watch this: the SOLIS-1 trial has a <strong>combination arm</strong> testing MET-233i alongside Pfizer's monthly GLP-1 agonist berobenatide. If that arm works, it's the first fully monthly amylin + GLP-1 combination — one injection per month covering two complementary satiety pathways. CagriSema requires weekly injections of both components; Pfizer is betting on once-monthly convenience as a differentiator.</p>

<h3>Mechanism: Why Amylin Is Different From GLP-1</h3>
<ul>
  <li>GLP-1 agonists (semaglutide, tirzepatide) primarily act on hypothalamic neurons to reduce appetite</li>
  <li>Amylin agonists act on the brainstem (area postrema, nucleus tractus solitarius) — anatomically distinct circuits</li>
  <li>The pathways are complementary: combining them produces additive weight loss</li>
  <li>Amylin also suppresses postprandial glucagon and slows gastric emptying (complementary to GLP-1)</li>
</ul>

<h3>Key Unknowns</h3>
<ul>
  <li>SOLIS-1 primary completion: August 2027 — no interim data expected near-term</li>
  <li>Maximum weight loss at steady-state monthly dosing: not yet known (Phase 1 data are early)</li>
  <li>How the combination arm performs vs. GLP-1 mono (is the amylin component additive at scale?)</li>
</ul>

<h3>Discussion Questions</h3>
<ol>
  <li>Do you think once-monthly dosing will drive meaningful adherence improvements over weekly GLP-1s?</li>
  <li>How significant is the amylin mechanism vs. the GLP-1/GIP approach for real-world weight maintenance?</li>
  <li>Pfizer's obesity track record has been mixed — does the acquisition of Metsera's platform change the picture?</li>
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
    // Use Asgaros REST endpoint if available
    $request = new WP_REST_Request('POST', '/' . $rest_namespace . '/topics');
    $request->set_param('title', $topic_title);
    $request->set_param('content', $topic_content);
    $request->set_param('status', 'publish');
    $response = rest_do_request($request);
    echo "Forum topic created via Asgaros REST: " . json_encode($response->get_data()) . "\n";
} else {
    // Fallback: create a standard WordPress post tagged for forum
    $post_data = array(
        'post_title'   => $topic_title,
        'post_content' => $topic_content,
        'post_status'  => 'publish',
        'post_type'    => 'post',
        'post_author'  => 1,
        'tags_input'   => array('met-233i', 'amylin', 'pfizer', 'weight-loss', 'phase-2', 'forum-topic'),
        'meta_input'   => array(
            '_mmm_forum_topic' => '1',
            '_mmm_compound'    => 'met-233i',
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

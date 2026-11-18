<?php
/**
 * Forum topic creation: PRI-002 (Priavoid all-D-peptide, Alzheimer's)
 * Generated: 2026-11-18
 * Target forum: Cognitive & Neuroprotective Peptides
 * Run via WP-CLI or direct DB insert after SSH access is available.
 *
 * WP-CLI example:
 *   wp eval-file forum_pending/2026-11-18_pri-002.php --allow-root
 */

global $wpdb;

$forum_id = 5; // Cognitive & Neuroprotective Peptides forum — confirm ID before running

$topic_title = 'New Research Thread: PRI-002 — Oral All-D-Peptide for Alzheimer\'s (Phase 2 PRImus-AD Topline, CTAD 2026)';

$topic_content = '<p><strong>PRI-002</strong> is an oral all-D-amino acid peptide from Priavoid GmbH targeting soluble amyloid beta oligomers (AβOs) in Alzheimer\'s disease. Phase 2 PRImus-AD topline results were announced at CTAD 2026 on November 17, 2026.</p>

<p><strong>Key findings (Phase 2, n=300, 48 weeks):</strong></p>
<ul>
  <li>Primary endpoint (CDR-SB at 48 weeks): <strong>Not met</strong></li>
  <li>ADAS-Cog13: ~19% slowing of cognitive decline (mITT, week 48, exploratory)</li>
  <li>CDR-SB at week 72: ~12% slowing (exploratory)</li>
  <li>ARIA-E: 2.2% | ARIA-H: 6.7% (vs 12–37% for anti-amyloid antibodies)</li>
</ul>

<p><strong>What makes PRI-002 interesting:</strong> all-D-peptide backbone = orally bioavailable + protease-resistant. Mechanistically distinct from lecanemab/donanemab (targets early oligomers, not fibrils/plaques). Significantly lower ARIA than approved antibodies.</p>

<p>Full dossier: <a href="https://minmaxmuscle.com/peptide/pri-002">minmaxmuscle.com/peptide/pri-002</a></p>

<p><em>Discussion: Does the primary endpoint miss end the program, or is the low ARIA + exploratory efficacy signal enough to justify a Phase 3? What do the forthcoming amyloid PET data need to show?</em></p>';

// Asgaros Forum direct DB insert
$user_id = 1; // admin user — confirm before running

$topic_data = array(
    'forum_id'   => $forum_id,
    'name'       => $topic_title,
    'content'    => $topic_content,
    'author_id'  => $user_id,
    'date'       => current_time('mysql'),
    'active'     => 1,
);

$result = $wpdb->insert(
    $wpdb->prefix . 'af_topics',
    $topic_data
);

if ( $result ) {
    $topic_id = $wpdb->insert_id;
    echo "Forum topic created: ID $topic_id\n";
} else {
    echo "Error creating forum topic: " . $wpdb->last_error . "\n";
}

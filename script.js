function expandAll() {
  document.querySelectorAll(".workout").forEach(w => w.open = true);
}

function collapseAll() {
  document.querySelectorAll(".workout").forEach(w => w.open = false);
}

document.addEventListener("DOMContentLoaded", () => {
  // Mobile menu toggle
  const hamburger = document.getElementById("hamburger");
  const mobileMenu = document.getElementById("mobileMenu");

  if (hamburger && mobileMenu) {
    hamburger.addEventListener("click", () => {
      mobileMenu.classList.toggle("open");
    });
  }

  // Contact form handling
  const form = document.getElementById("contactForm");

  if (form) {
    form.addEventListener("submit", function (e) {
      e.preventDefault();

      const requiredFields = form.querySelectorAll("[required]");
      let valid = true;

      requiredFields.forEach(field => {
        if (!field.value.trim()) {
          field.style.borderColor = "#ff4d4d";
          valid = false;
        } else {
          field.style.borderColor = "rgba(255,255,255,0.1)";
        }
      });

      if (!valid) {
        alert("Please complete all required fields.");
        return;
      }

      alert("Inquiry submitted. You will be contacted if it is a good fit.");
      form.reset();
    });
  }
});
document.querySelectorAll(".nutri-btn").forEach(btn => {
  btn.addEventListener("click", () => {
    const mode = btn.dataset.mode;

    // buttons
    document.querySelectorAll(".nutri-btn").forEach(b =>
      b.classList.remove("active")
    );
    btn.classList.add("active");

    // content
    document.querySelectorAll(".nutrition-mode").forEach(section =>
      section.classList.remove("active")
    );
    document.getElementById(mode).classList.add("active");
  });
});
// Nutrition goal toggle
const nutritionButtons = document.querySelectorAll(".nutri-btn");
const nutritionSections = document.querySelectorAll(".nutrition-mode");

if (nutritionButtons.length && nutritionSections.length) {
  nutritionButtons.forEach(btn => {
    btn.addEventListener("click", () => {
      const mode = btn.dataset.mode;

      // Reset buttons
      nutritionButtons.forEach(b => b.classList.remove("active"));
      btn.classList.add("active");

      // Reset sections
      nutritionSections.forEach(section => {
        section.classList.remove("active");
      });

      // Activate selected section
      const target = document.getElementById(mode);
      if (target) target.classList.add("active");
    });
  });
}
// ==============================
// Nutrition goal selector logic
// ==============================
document.addEventListener("DOMContentLoaded", () => {
  const buttons = document.querySelectorAll(".nutri-btn");
  const sections = document.querySelectorAll(".nutrition-mode");

  if (!buttons.length || !sections.length) return;

  buttons.forEach(button => {
    button.addEventListener("click", () => {
      const mode = button.dataset.mode;

      // deactivate all buttons
      buttons.forEach(b => b.classList.remove("active"));
      button.classList.add("active");

      // hide all sections
      sections.forEach(section => section.classList.remove("active"));

      // show selected section
      const target = document.getElementById(mode);
      if (target) target.classList.add("active");
    });
  });
});

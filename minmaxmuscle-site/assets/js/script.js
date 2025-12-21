document.addEventListener("DOMContentLoaded", () => {
  const hamburger = document.getElementById("hamburger");
  const mobileMenu = document.getElementById("mobileMenu");

  hamburger.addEventListener("click", () => {
    mobileMenu.classList.toggle("show");
  });
});
// Mobile menu toggle
const hamburger = document.getElementById('hamburger');
const mobileMenu = document.getElementById('mobileMenu');

if (hamburger) {
  hamburger.addEventListener('click', () => {
    mobileMenu.classList.toggle('open');
  });
}

// Contact form handling
const form = document.getElementById('contactForm');

if (form) {
  form.addEventListener('submit', function (e) {
    e.preventDefault();

    const requiredFields = form.querySelectorAll('[required]');
    let valid = true;

    requiredFields.forEach(field => {
      if (!field.value.trim()) {
        field.style.borderColor = '#ff4d4d';
        valid = false;
      } else {
        field.style.borderColor = '#1f2330';
      }
    });

    if (!valid) {
      alert('Please complete all required fields.');
      return;
    }

    // Placeholder submission logic
    alert('Inquiry submitted. You will be contacted if it is a good fit.');
    form.reset();
  });
}

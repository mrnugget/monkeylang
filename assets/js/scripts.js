// Vanilla-JS navbar toggler (replaces Bootstrap 4 + jQuery for this site's sole JS need).
document.addEventListener('DOMContentLoaded', function () {
  document.querySelectorAll('.navbar-toggler[data-target]').forEach(function (btn) {
    var target = document.querySelector(btn.getAttribute('data-target'));
    if (!target) return;
    btn.addEventListener('click', function () {
      var expanded = target.classList.toggle('show');
      btn.setAttribute('aria-expanded', expanded ? 'true' : 'false');
    });
  });
});

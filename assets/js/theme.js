(() => {
  const storageKey = "site-theme";
  const modes = ["system", "light", "dark"];
  const system = window.matchMedia("(prefers-color-scheme: dark)");
  let mode = "system";

  try {
    const saved = localStorage.getItem(storageKey);
    if (modes.includes(saved)) mode = saved;
  } catch {
    // The theme still works when storage is unavailable.
  }

  function applyTheme() {
    document.documentElement.dataset.theme = mode === "system"
      ? (system.matches ? "dark" : "light")
      : mode;
  }

  applyTheme();
  system.addEventListener("change", applyTheme);
  document.addEventListener("DOMContentLoaded", () => {
    const toggle = document.getElementById("site-theme");
    if (!toggle) return;
    const icon = toggle.querySelector("i");
    const icons = { system: "fa-desktop", light: "fa-sun", dark: "fa-moon" };
    const nextMode = () => modes[(modes.indexOf(mode) + 1) % modes.length];

    function updateToggle() {
      icon.className = "fas " + icons[mode];
      const label = "Color theme: " + mode + ". Switch to " + nextMode();
      toggle.setAttribute("aria-label", label);
      toggle.title = label;
    }

    updateToggle();
    toggle.hidden = false;
    toggle.addEventListener("click", () => {
      mode = nextMode();
      applyTheme();
      updateToggle();
      try {
        localStorage.setItem(storageKey, mode);
      } catch {
        // Keep this choice for the current page.
      }
    });
  });
})();

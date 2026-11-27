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
    const picker = document.getElementById("site-theme");
    if (!picker) return;
    picker.value = mode;
    picker.parentElement.hidden = false;
    picker.addEventListener("change", () => {
      mode = picker.value;
      applyTheme();
      try {
        localStorage.setItem(storageKey, mode);
      } catch {
        // Keep this choice for the current page.
      }
    });
  });
})();

function toggleSidePanel() {
    const button = document.getElementById('show-form');
    const panel = document.getElementById('side-panel');
    const form = document.getElementById('new-task-button');
    button.addEventListener("click", () => {
      panel.classList.toggle('cd-panel--is-visible');
      button.classList.toggle('hidden');
    });
    form.addEventListener("click", () => {
      panel.classList.toggle('cd-panel--is-visible');
      button.classList.toggle('hidden');
    });
}

export { toggleSidePanel }

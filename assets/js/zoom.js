// Initialize medium zoom.
$(document).ready(function () {
  medium_zoom = mediumZoom("[data-zoomable]", {
    background: getComputedStyle(document.documentElement).getPropertyValue("--global-bg-color") + "ee", // + 'ee' for trasparency.
  });
  medium_zoom.on('opened', (zoomedImage) => {
  zoomedImage.classList.remove("rounded");
  zoomedImage.style.borderRadius = "0";
  });
});

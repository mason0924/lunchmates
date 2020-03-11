function initLoadingGif() {
  // Find the image on the page
  const image = document.getElementById("lucky-loading-image");
  // If there's an image on the page, then wait 3 seconds
  if (image) {
    window.setTimeout(function() {
      // Hide the image
      image.classList.add("d-none");
      // Show the page content
      const pageContent = document.getElementById("lucky-page");
      pageContent.classList.remove("d-none");
    }, 2700);
  }
}

export { initLoadingGif };
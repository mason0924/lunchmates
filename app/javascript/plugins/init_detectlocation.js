function initDetectLocation() {
  const detectLocationButton = document.querySelector("#myLocation")
  if (detectLocationButton) {
    detectLocationButton.addEventListener('click', (event) => {
      navigator.geolocation.getCurrentPosition((data) => {
        window.location.href = window.location.href + `events?lat=${data.coords.latitude}&long=${data.coords.longitude}`
      });
   });
  }
}

export { initDetectLocation };
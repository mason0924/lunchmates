import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css"; // Note this is important!

function initFlatpickr() {
  const element = document.querySelector(".datepicker");
  if (element) {
    flatpickr(".datepicker", {});
  }
}

export { initFlatpickr }
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css"; // Note this is important!

function initFlatpickr() {
  const element = document.querySelector(".datepicker");
  if (element) {
    flatpickr(".datepicker", {});
  }
}
  const timeOption = document.querySelector(".event_start_time")
  if (timeOption) {
    flatpickr(".event_start_time",
      {
          enableTime: true,
          noCalendar: true,
          dateFormat: "H:i",
          time_24hr: true
      }
      )
  }

export { initFlatpickr }

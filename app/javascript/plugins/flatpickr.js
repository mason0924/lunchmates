import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css"; // Note this is important!

function initFlatpickr() {
  const element = document.querySelector(".datepicker");
  if (element) {
    flatpickr(".datepicker", {});
  }
}
  const timeStart = document.querySelector(".event_start_time")
  if (timeStart) {
    flatpickr(".event_start_time",
      {
          enableTime: true,
          noCalendar: true,
          dateFormat: "H:i",
          minTime: "16:00",
          maxTime: "22:30",
      }
      )
  }
  const timeEnd = document.querySelector(".event_end_time")
  if (timeEnd) {
    flatpickr(".event_end_time",
      {
       enableTime: true,
       noCalendar: true,
       dateFormat: "H:i",
       minTime: "16:00",
       maxTime: "22:30",
      }
      )
  }
export { initFlatpickr }

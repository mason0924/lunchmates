import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initFlatpickr } from "../plugins/flatpickr";
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initDetectLocation } from '../plugins/init_detectlocation';
import {toggleMap} from '../plugins/map-list_toggle';
import { initSweetalert } from '../plugins/init_sweetalert';

initMapbox();
initAutocomplete();
initDetectLocation();
initFlatpickr();
toggleMap();

const joinButton = document.getElementById('sweet-alert-join');
if (joinButton) {
  const location = joinButton.dataset.location;
  const restaurantName = joinButton.dataset.name;
  const lunchdate =joinButton.dataset.date;
  const lunchtime = joinButton.dataset.time;

  initSweetalert('#sweet-alert-join', {
    title: "You are joining the event!😋",
    text: `
    ${restaurantName}
    📅: ${lunchdate}
    🕒: ${lunchtime}
    📍: ${location}
    `,
    icon: "success"
  }, (value) => {
    if (value) {
      const link = document.querySelector('#join-button');
      link.click();
    }
  });
}

initSweetalert('#sweet-alert-unjoin', {
  title: "You have unjoined the event 🥺",
  icon: "error"
}, (value) => {
  if (value) {
    const link = document.querySelector('#unjoin-button');
    link.click();
  }
});
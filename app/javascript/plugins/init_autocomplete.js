import places from 'places.js';

const initAutocomplete = () => {
  const addressInputHome = document.getElementById('query');
  const addressInputCreate = document.getElementById('event_restaurant_address');

  if (addressInputHome ) {
    places({ container: addressInputHome });
  }
  if (addressInputCreate) {
    places({ container: addressInputCreate });
  }
};

export { initAutocomplete };


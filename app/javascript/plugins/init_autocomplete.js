import places from 'places.js';

const initAutocomplete = () => {
  const addressInputHome = document.getElementById('query');
  const addressInputCreate = document.getElementById('location');

  if (addressInputHome ) {
    places({ container: addressInputHome });
  }
  if (addressInputCreate) {
    places({ container: addressInputCreate });
  }
};

export { initAutocomplete };


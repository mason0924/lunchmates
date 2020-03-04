import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('restaurant_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
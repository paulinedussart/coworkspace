import 'core-js/stable'
import 'regenerator-runtime/runtime'

import "bootstrap";

import activeCheckBoxes from "./service_choice";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initMapbox } from '../plugins/init_mapbox';

// ---------- MapBox ----------
initMapbox();


import bookReservation from "./book_reservation";
bookReservation();

activeCheckBoxes();
// ---------- Algolia ----------
import { initAutocomplete } from "../plugins/init_autocomplete";
initAutocomplete();

// ---------- FlatPickr ----------
import "../plugins/flatpickr";

// ------------ AOS ------------
import AOS from 'aos';
import 'aos/dist/aos.css'; // You can also use <link> for styles

AOS.init({
  delay: 1000, // values from 0 to 3000, with step 50ms
  duration: 3000, // values from 0 to 3000, with step 50ms
  easing: 'ease', // default easing for AOS animations
  once: true, // whether animation should happen only once - while scrolling down
});

// --------- NAVBAR ---------
import scrollNavbarFunction from "./navbar";


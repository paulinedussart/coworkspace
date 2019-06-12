import "bootstrap";

import activeCheckBoxes from "./service_choice";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initMapbox } from '../plugins/init_mapbox';


initMapbox();
import bookReservation from "./book_reservation";

activeCheckBoxes();
bookReservation();


import "../plugins/flatpickr"

import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import "@fullcalendar/core/main.css";
import "@fullcalendar/daygrid/main.css";

document.addEventListener('DOMContentLoaded', function() {
  var calendarEl = document.getElementById('calendar');

  var calendar = new Calendar(calendarEl, {
    plugins: [ dayGridPlugin ],
    defaultView: 'dayGridWeek',
  });

  calendar.render();
});

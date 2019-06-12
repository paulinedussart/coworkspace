import "bootstrap";

import activeCheckBoxes from "./service_choice";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initMapbox } from '../plugins/init_mapbox';


initMapbox();
import bookReservation from "./book_reservation";

activeCheckBoxes();
bookReservation();


import "../plugins/flatpickr";


import "@fullcalendar/core/main.css";
import "@fullcalendar/daygrid/main.css";

import fullCalendar from "./fullcalendar";
fullCalendar();

import "bootstrap";
import activeCheckBoxes from "./service_choice";

activeCheckBoxes();

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initMapbox } from '../plugins/init_mapbox';


initMapbox();

import "../plugins/flatpickr"

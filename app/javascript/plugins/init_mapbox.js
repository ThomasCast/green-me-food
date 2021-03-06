import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    const element = document.createElement('div');
    element.className = 'marker';
    element.style.backgroundImage = `url('https://image.flaticon.com/icons/png/512/4463/4463869.png')`;
    element.style.backgroundSize = 'contain';
    element.style.width = '60px';
    element.style.height = '60px';
  
    const geocoder = new MapboxGeocoder({
      accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl,
      marker: {element}
    });
    
    document.getElementById('geocoder').appendChild(geocoder.onAdd(map));
  };
};

export { initMapbox };


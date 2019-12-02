import mapboxgl from 'mapbox-gl';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};


const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/paolabrb/ck3ofbx0807021cqpbw7slwt7'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
      markers.forEach((marker) => {
        const element = document.createElement('div');
          element.className = 'marker';
          element.style.backgroundImage = `url('${marker.image_url}')`;
          element.style.backgroundSize = 'contain';
          element.style.width = '45px';
          element.style.height = '45px';

        new mapboxgl.Marker(element)
          .setLngLat([ marker.lng, marker.lat ])
          .addTo(map);
      });
    fitMapToMarkers(map, markers);
  }
};

export { initMapbox };


// app/javascript/controllers/mapbox_controller.js
import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"
// import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"


export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/kenji123/cl3u88kr9000615p92pwpnfrk" //Add custom style later. Go to mapbox studio to create new style and get the link to paste here.
    })

    this.markersValue = this.markersValue.sort((a, b) => a.position - b.position);

    this.#addMarkersToMap()
    this.#fitMapToMarkers()

    // this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken, mapboxgl: mapboxgl }))
    if (/^\/itineraries\//.test(window.location.pathname)) {
      this.#drawItinerary()
    }

  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)

      // Create a HTML element for your custom marker
      const customMarker = document.createElement("div")
      customMarker.className = "marker"
      customMarker.style.backgroundImage = `url('${marker.image_url}')`
      customMarker.style.backgroundSize = "contain"
      customMarker.style.width = "70px"
      customMarker.style.height = "70px"

      // Pass the element as an argument to the new marker
      if (marker.image_url) {
        new mapboxgl.Marker(customMarker)
          .setLngLat([marker.lng, marker.lat])
          .setPopup(popup)
          .addTo(this.map)
      } else {
        new mapboxgl.Marker()
          .setLngLat([marker.lng, marker.lat])
          .setPopup(popup)
          .addTo(this.map)
      }

    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([marker.lng, marker.lat]))
    this.map.fitBounds(bounds, { padding: 80, maxZoom: 15, duration: 0 })
  }

  #drawItinerary() {
    this.map.on('load', () => {
      // const [marker1, marker2] = this.markersValue;
      // console.log(marker1, marker2);
      // console.log(this.markersValue);
      for (let i = 0; i < this.markersValue.length; i++) {
        const marker1 = this.markersValue[i];
        const marker2 = this.markersValue[i + 1];
        this.map.addSource(`route${i}`, {
          'type': 'geojson',
          'data': {
            'type': 'Feature',
            'properties': {},
            'geometry': {
              'type': 'LineString',
              'coordinates':
                // this.markersValue.map(marker => [marker.lng, marker.lat])
                [
                  [marker1.lng, marker1.lat],
                  [marker2.lng, marker2.lat],
                ]
            }
          }
        });
        this.map.addLayer({
          'id': `route${i}`,
          'type': 'line',
          'source': `route${i}`,
          'layout': {
            'line-join': 'round',
            'line-cap': 'round'
          },
          'paint': {
            'line-color': '#FFC65A',
            'line-width': 5
          }
        });
      }
    });
  }
}

$(document).on('turbolinks:load', function() {
  console.log('script running');
  mapboxgl.accessToken = 'pk.eyJ1Ijoid28xcGgiLCJhIjoiY2l1YThnemRoMDAxeTJ5bDcyYW82MTZxMSJ9.6KW1QasMXf9JJ2M81bQ-1g'
  var map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/dark-v9'
  });
  console.log(map);
});

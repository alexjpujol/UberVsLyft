$(document).ready(function() {
  var directionsDisplay = new google.maps.DirectionsRenderer;
  var directionsService = new google.maps.DirectionsService;

  //AUTOCOMPLETE ADDRESS FOR FORM & RENDERS MAP ON INITIAL LOAD
  google.maps.event.addDomListener(window, 'load', initialize);
  google.maps.event.addDomListener(window, 'load', initMap);

  //AUTOCOMPLETE ADDRESS
  function initialize() {
    var input = document.getElementById('start');
    var autocomplete = new google.maps.places.Autocomplete(input);
    console.log("swag")
    
    var input2 = document.getElementById('endloc');
    var autocomplete2 = new google.maps.places.Autocomplete(input2);
  }

  //SHOWS INITIAL MAP (no directions)
  function initMap() {
    var mySLatLng = new google.maps.LatLng(40.708380459597200, -74.005633811976400);
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 2,
      center: mySLatLng
    });
    directionsDisplay.setMap(map);

  //MODE OF TRANSPORT REFLECTED ON CHANGE INSTEAD OF HAVING TO PRESS REFRESH
    calculateAndDisplayRoute(directionsService, directionsDisplay);
    document.getElementById('mode').addEventListener('change', function() {
      calculateAndDisplayRoute(directionsService, directionsDisplay);
    });
  }

  //TAKES START AND END LOCATIONS AND RENDERS DIRECTION ON MAP
  function calculateAndDisplayRoute(directionsService, directionsDisplay) {
    var input = document.getElementById('start').value
    console.log(input)

    var input2 = document.getElementById('endloc').value
    console.log(input2)
    
    var selectedMode = document.getElementById('mode').value;
    directionsService.route({
      origin: input,
      destination: input2, 
      travelMode: google.maps.TravelMode[selectedMode] //travel mode from drop down
    }, function(response, status) {
      if (status == google.maps.DirectionsStatus.OK) {
        directionsDisplay.setDirections(response);
      } else {
        window.alert('Directions request failed due to ' + status);
      }
    });
  }

  $('#submit_button').click(function(){
    calculateAndDisplayRoute(directionsService, directionsDisplay)
  });



});
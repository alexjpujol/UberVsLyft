$(document).ready(function() {
    
    $("form").submit(function(evt) {
    evt.preventDefault();

    // the AJAX part
    var uberAPI = "https://api.uber.com/v1/estimates/price";
    var parameters = {
        'server_token': '3Y8tpNXfErvmttM5r5xGQmpGh6V-WSoKR-G85JYH',
        'start_latitude': 40.7218370,
        'start_longitude': -73.9877070,
        'end_latitude': 40.7079100,
        'end_longitude': -74.0064830   
    };
  
    function displayData(data) {
       var rideHTML = '<ul>';
      $.each(data.prices, function(i,ride) {
        rideHTML += '<li>';
        rideHTML += ride.localized_display_name;  
        rideHTML += '</li>';
        rideHTML += '<li>';
        rideHTML += ride.estimate;
        rideHTML += '</li>';
        rideHTML += '<li>';
        rideHTML += ride.duration;
        rideHTML += '</li>';
      }); // end each
      rideHTML += '</ul>';
      $('#rides').html(rideHTML);
    }
    $.getJSON(uberAPI, parameters, displayData);
  });
}); // end ready
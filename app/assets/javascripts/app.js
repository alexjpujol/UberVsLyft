$(document).ready(function() {

  $("form").on("submit", function(event) {
    if ($("#start").val() === "" || $("#endloc").val() === ""){
      document.getElementById("error").textContent = "Please make sure your address includes the street, city and state!"
      return false;
    } 
    //   else {
    //   document.getElementById("error").textContent = "";
    //   $(document).ajaxStart(function() {
    //   $("#loading").css("display", "block");
    //   });
    // };
  });

});


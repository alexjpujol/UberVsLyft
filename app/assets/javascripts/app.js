$(document).ready(function() {
    $("form").on("submit", function(event) {
        if ($("#start").val() === "" || $("#endloc").val() === "") {
            event.preventDefault();
            document.getElementById("error").textContent = "Please enter a valid search! You can't have empty values and you can't do mega rides!"
        };
    });
});
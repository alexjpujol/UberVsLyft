$(document).ready(function() {
    
    $("form").on("submit", function(event) {
        if ($("#start").val() === "" || $("#endloc").val() === ""){
            document.getElementById("error").textContent = "Please enter a valid search! You can't have empty values and you can't do mega rides!"
            return false;
        } else {
        document.getElementById("error").textContent = "";
        $(document).ajaxStart(function() {
        $("#loading").css("display", "block");
        });
        };
    });
});
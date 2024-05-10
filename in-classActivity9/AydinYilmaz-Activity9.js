$(document).ready(function() {
    // preload images
    $("#image_list a").each(function() {
        var swappedImage = new Image();
        swappedImage.src = $(this).attr("href");
    });

    // set up event handlers for links    
    $("#image_list a").click(function(evt) {
        evt.preventDefault(); // cancel the default action of the link

        var imageURL = $(this).attr("href");
        var caption = $(this).attr("title");

        // fade out the image and caption
        $("#image, #caption").fadeOut(1000, function() {
            // After fade out, update the image and caption
            $("#image").attr("src", imageURL).fadeIn(1000);
            $("#caption").text(caption).fadeIn(1000);
        });
    }); // end click

    // move focus to first thumbnail
    $("li:first-child a").focus();
}); // end ready

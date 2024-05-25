$(document).ready(function() {
    $("#nav_list ul").on("click", "a", function(event) {
        event.preventDefault();
        var title = $(this).attr("title");
        var jsonFilePath = "json_files/" + title.toLowerCase() + ".json";
        
        // clear existing content
        $("main").empty();
        
        // fetch and display new content
        $.getJSON(jsonFilePath, function(data) {
            var content = '<div class="large-announcement-container">' + // wrap in the proper container
                            '<div class="large-announcement-box">' + // wrap in the proper box
                           '<img src="' + data.anno[0].image + '" class="large-announcement-image">' +
                           '<div class="large-announcement-content">' +
                           '<h3 class="large-announcement-title">' + data.anno[0].title + '</h3>' +
                           '<p class="large-announcement-date">' + data.anno[0].date + '</p>' +
                           '<p class="large-announcement-summary">' + data.anno[0].text + '</p>' +
                           '</div></div>';
            $("main").append(content);
        }).fail(function() {
            console.error("Failed to load data from " + jsonFilePath);
        });
    });
});

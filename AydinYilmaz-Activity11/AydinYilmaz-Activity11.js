$(document).ready(function() {
    $("#nav_list ul").on("click", "a", function(event) {
        event.preventDefault(); // Prevent default link behavior
        
        var title = $(this).attr("title");
        var jsonFilePath = "json_files/" + title.toLowerCase() + ".json"; // Build JSON file name
        
        $("main").empty();
        
        // Get the data for the speaker from the JSON file
        $.getJSON(jsonFilePath, function(data) {
            // Build HTML elements for the speaker
            var content = '<h1>' + data.speakers[0].title + '</h1>' +
                              '<img src="' + data.speakers[0].image + '">' +
                              '<h2>' + data.speakers[0].month + '<br>' + data.speakers[0].speaker + '</h2>' +
                              '<p>' + data.speakers[0].text + '</p>';
            
            // Append the speaker HTML to the main element
            $("main").append(content);
        }).fail(function() {
            console.error("Failed to load data from " + jsonFilePath);
        });
    });
});
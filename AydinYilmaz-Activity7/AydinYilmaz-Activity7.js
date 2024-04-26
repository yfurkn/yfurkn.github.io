var names = ["Ben", "Joel", "Judy", "Anne"];
var scores = [88, 98, 77, 88];

var $ = function (id) { return document.getElementById(id); };



window.onload = function () {
	$("display_results").onclick = displayResults;
	$("display_scores").onclick = displayScores;
	$("add").onclick = addScore;
};

function displayResults() {
    var average = 0;
    var highScore = 0;
    var highScorer = "";

    for (var i = 0; i < scores.length; i++) {
        average = (average * i + scores[i]) / (i + 1);

        if (scores[i] > highScore) {
            highScore = scores[i];
            highScorer = names[i];
        }
    }
    
    var resultsHTML = "<h2>Results</h2>";
    resultsHTML += "<p>Average score is " + average.toFixed(2) + "</p>"; 
    if (highScorer) {
        resultsHTML += "<p>High Score: " + highScorer + " with a score of " + highScore + "</p>";
    } else {
        resultsHTML += "<p>No high score available.</p>";
    }

    $("results").innerHTML = resultsHTML;
}
	

function addScore() {
    var name = $("name").value;
    var score = parseInt($("score").value);

	

    if (name && score >= 0 && score <= 100) {
        names.push(name);
        scores.push(score);
        alert("Score added successfully!");
    } else {
        alert("Please enter a valid name and a score between 0 and 100.");
    }
}


function displayScores() {
    var table = "<h2>Scores</h2>";
    table += "<tr><th>Name</th><th>Score</th></tr>";

    for (var i = 0; i < scores.length; i++) {
        table += "<tr>";
        table += "<td>" + names[i] + "</td>";
        table += "<td>" + scores[i] + "</td>";
        table += "</tr>";
    }
    
    table += "</table>";

    $("scores_table").innerHTML = table;
}





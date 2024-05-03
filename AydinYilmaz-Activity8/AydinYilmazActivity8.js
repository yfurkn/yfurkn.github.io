$(document).ready(function() {
    var programmingLanguages = [
        "ActionScript", "AppleScript", "Asp", "BASIC", "C", "C++", "Clojure", "COBOL", "ColdFusion", "Erlang",
        "Fortran", "Groovy", "Haskell", "Java", "JavaScript", "Lisp", "Perl", "PHP", "Python", "Ruby", "Scala", "Scheme"
    ];

    $("#language").autocomplete({
        source: programmingLanguages
    });

    $("#birthday").datepicker({
        dateFormat: "dd-mm-yy"
    });
});

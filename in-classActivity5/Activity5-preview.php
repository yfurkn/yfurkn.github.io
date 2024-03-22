<!DOCTYPE html>
<html lang="en">
<head>
    <title>Forms</title>
    <meta name="description" content="CENG 311 Inclass Activity 5" />
</head>
<body>

    <h1>Preview</h1>
    <?php

    // NAME

    if (empty($_GET["name"] == false)) {
        echo $_GET["name"]."<br>";
    }
    else {
        echo "Name: Not provided <br>";


    }

    // USERNAME

    if (empty($_GET["username"] == false)) {
        echo $_GET["username"]."<br>";
    }
    else {
        echo "Username: Not provided <br>";
    }

    // PASSWORD

    if (empty($_GET["password"] == false)) {
        echo $_GET["password"]."<br>";
    }
    else {
        echo "Password: Not provided <br>";
    }

    // ADDRESS

    if (empty($_GET["address"] == false)) {
        echo $_GET["address"]."<br>";
    }
    else {
        echo "Address: Not provided <br>";
    }

    // Country

    if (empty($_GET["country"] == false)) {
        echo $_GET["country"]."<br>";
    }
    else {
        echo "Country: Not provided <br>";
    }

    // Zip

    if (empty($_GET["zip"] == false)) {
        echo $_GET["zip"]."<br>";
    }
    else {
        echo "Zip: Not provided <br>";
    }

    // EMAİL

    if (empty($_GET["mail"] == false)) {
        echo $_GET["mail"]."<br>";
    }
    else {
        echo "Email: Not provided <br>";
    }

    // SEX

    if (empty($_GET["sex"] == false)) {
        echo $_GET["sex"]."<br>";
    }
    else {
        echo "Sex: Not provided <br>";
    }

    // LANGUAGE

    if (empty($_GET["lang"] == false)) {
        for ($i=0; $i < sizeof($_GET["lang"]); $i++) { 
            echo $_GET["lang"][$i]."<br>";
        }
    }
    else {
        echo "Language: Not provided <br>";
    }

    // ABOUT

    if (empty($_GET["about"] == false)) {
        echo $_GET["about"]."<br>";
    }
    else {
        echo "About: Not provided <br>";
    }

    ?>
    
    
</body>

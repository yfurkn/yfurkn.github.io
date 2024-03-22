<!DOCTYPE html>
<html lang="en">
<head>
    <title>Forms</title>
    <meta name="description" content="CENG 311 Inclass Activity 5" />
</head>
<body>
    <h1>Registration Form</h1>

    <form action="Activity5-preview.php" method="get">
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name"/> <br /></td>
            </tr>
            <tr>
                <td>Username:</td>
                <td><input type="text" name="username"/> <br /></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="password"/> <br /></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><input type="text" name="address"/> <br /></td>
            </tr>
            <tr>
                <td>Country:</td>
                <td><select name="country">
                <option value="USA">USA</option>
                <option value="Turkiye">Turkiye</option>
                <option value="Germany">Germany</option>
                </select><br/></td>
            </tr>
         
            <tr>
                <td>ZIP Code:</td>
                <td><input type="text" name="zip"/> <br /></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="email" name="mail"/> <br /></td>
            </tr>
            <tr>
                <td>Sex:</td>
                <td>
                    Male <input type="radio" name="sex" value="Male"/>
                    Female <input type="radio" name="sex" value="Female"/><br/>
                </td>
            </tr>
            <tr>
                <td>Language: </td>
                <td>
                    English: <input type="checkbox" name="lang[]" value="English"/>
                    French:  <input type="checkbox" name="lang[]" value="French"/>
                    German: <input type="checkbox" name="lang[]" value="Germany"/><br/>
            </td>
            </tr>
            <tr>
                <td>About:</td>
                <td><textarea name="about"cols="30" rows="5"></textarea><br/></td>
            </tr>

            <tr>
                <td><input type="submit" value="Submit"></td>
            </tr>
        </table>
    </form>
    
    
</body>
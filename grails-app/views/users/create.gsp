<%--
  Created by IntelliJ IDEA.
  User: shrikant
  Date: 13/6/16
  Time: 11:58 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <link href="/css/boots">
</head>

<body>
<h1> SIGN-UP FORM</h1>
<form action="/learning-management/users/save">

    <label for="firstname">Firstname :</label>
    <input type="text" name="firstname" id="firstname" placeholder="Enter First name"><br><br>
    <label for="lastname">Lastname :</label>
    <input type="text" name="lastname" id="lastname" placeholder="Enter Last name"><br><br>
    <label for="email">Email :</label>
    <input type="email" name="email" id="email" placeholder="Enter email id"><br><br>
    <label for="age">Age :</label>
    <input type="number" name="age" id="age" placeholder="Enter age"><br><br>
    <input type="submit" value="submit">
</form>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: shrikant
  Date: 13/6/16
  Time: 12:44 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Show</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
</head>
<body>
    Thank you:<br>

    Firstname :${recentlySavedUser.myfirstname}<br>
    Lastname :${recentlySavedUser.mylastname}<br>
    Email :${recentlySavedUser.myemail}<br>
    Age:${recentlySavedUser.myage}<br><br>

<button class="btn btn-danger"><a href="http://localhost:8080/learning-management/users/list">LIST</a></button>
<button class="btn btn-danger"><a href="http://localhost:8080/learning-management/users/create">Enter more</a></button>

</body>
</html>
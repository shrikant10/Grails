<%--
  Created by IntelliJ IDEA.
  User: shrikant
  Date: 13/6/16
  Time: 12:43 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>List</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
</head>
<body>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Firstname</th>
                    <th>Lastname</th>
                    <th>Email</th>
                    <th>Age</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${allUsers}">
                <tr>
                    <td>${it.myfirstname}</td>
                    <td>${it.mylastname}</td>
                    <td>${it.myemail}</td>
                    <td>${it.myage}</td>
                </tr>
            </g:each>
            </tbody>
    </table>
</body>
</html>
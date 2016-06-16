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
    <meta name="layout" content="abc" />
</head>
<body>
<div class="container">
    <div class="page-header"><h1>List of all saved user</h1></div>
<table class="table table-bordered">
            <thead>
                <tr class="bg-success">
                    <th>Firstname</th>
                    <th>Lastname</th>
                    <th>Email</th>
                    <th>Age</th>
                </tr>
            </thead>
            <tbody>
            <g:each in="${allUsers}">
                    <tr class="${it.myage.toInteger()>=100?"danger":""}">
                        <td>${it.myfirstname}</td>
                        <td>${it.mylastname}</td>
                        <td>${it.myemail}</td>
                        <td>${it.myage}</td>
                    </tr>
            </g:each>
            </tbody>
    </table>
</div>
</body>
</html>
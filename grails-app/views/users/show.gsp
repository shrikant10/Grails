<%--
  Created by IntelliJ IDEA.
  User: shrikant
  Date: 13/6/16
  Time: 12:44 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>Show</title>
    <asset:stylesheet href="bootstrap.css"/>
    <asset:javascript src="bootstrap.js"/>
    <asset:javascript src="jquery.min.js"/>
</head>
<body>
<g:render template="/templates/mynavbar" model="[myCurrentPage:'show']"></g:render>
<div class="container">
    <div class="page-header"> <h1>Recently saved user</h1> </div>
    <dl>
        <dt>Firstname :</dt>
            <dd>${recentlySavedUser.myfirstname}</dd>
        <dt>Lastname :</dt>
            <dd>${recentlySavedUser.mylastname}</dd>
        <dt>Email :</dt>
            <dd>${recentlySavedUser.myemail}</dd>
        <dt>Age:</dt>
            <dd>${recentlySavedUser.myage}</dd>
    </dl>

<button class="btn btn-info"><a href="">LIST</a></button>
<button class="btn btn-info"><a href="http://localhost:8080/learning-management/users/create">Enter more</a></button>
</div>
</body>
</html>
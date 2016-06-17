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
    <meta name="layout" content="abc" />
</head>
<body>
<div class="container">
    <content tag="main">
        <div class="page-header"> <h1>Recently saved user</h1> </div>
    <dl class="dl-horizontal">
        <dt>Firstname :</dt>
            <dd>${recentlySavedUser.firstName}</dd>
        <dt>Lastname :</dt>
            <dd>${recentlySavedUser.lastName}</dd>
        <dt>Email :</dt>
            <dd>${recentlySavedUser.email}</dd>
        <dt>Age:</dt>
            <dd>${recentlySavedUser.age}</dd>
    </dl>
    </content>
    <content tag="side">
        <p>The origin of life is a scientific problem which is not yet solved. There are plenty of ideas, but few clear facts.
            <br><br>It is generally agreed that all life today evolved by common descent from a single primitive lifeform.
            <br><br>Just like in Java, groovy can access its instance members using the this keyword. <br><br>The following
        example shows how when we use the statement this.x, it refers to its instance and sets the
        value of x accordingly.</p>
    </content>
</div>
</body>
</html>
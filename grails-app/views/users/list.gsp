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
    <content tag="main">
        <div class="page-header"><h1>List of all saved user</h1></div>
        <table class="table table-bordered">
            <thead>
                <tr class="bg-success">
                    <th>ID</th>
                    <th>Firstname</th>
                    <th>Lastname</th>
                    <th>Email</th>
                    <th>Age</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            <g:each in="${allUsers}">
                    <tr class="${it.age.toInteger()>=100?"danger":""}">
                        <td><g:link controller="users" action="show" id="${it.id}">${it.id}</g:link></td>
                        <td>${it.firstName}</td>
                        <td>${it.lastName}</td>
                        <td>${it.email}</td>
                        <td>${it.age}</td>
                        <td><g:link controller="users" action="edit" id="${it.id}">Edit</g:link>  <g:link
                                controller="users" action="delete" id="${it.id}">Delete</g:link></td>
                    </tr>
            </g:each>
            </tbody>
    </table>
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
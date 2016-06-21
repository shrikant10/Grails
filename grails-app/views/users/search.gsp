<%--
  Created by IntelliJ IDEA.
  User: shrikant
  Date: 20/6/16
  Time: 1:18 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Search page</title>
    <asset:stylesheet href="font-awesome.min.css"/>
    <meta name="layout" content="abc"/>
</head>

<body>
<content tag="main">
    <div class="page-header"><h1>Search</h1></div>
    <g:form class="form-horizontal" method="post" controller="users" action="test">
        <div class="form-group">
            <div class="col-md-4">
                <input class="form-control" placeholder="Search by email" type="text" name="sEmail" id="sEmail">
            </div>
        </div>

        <div class="col-md-offset-1"><p>OR</p></div>

        <!--<div class="form-group">
            <div class="col-md-4">
                <input class="form-control" placeholder="Search by Name" type="text" name="sName" id="sName">
            </div>
        </div>

        <div class="col-md-offset-1"><p>OR</p></div>-->

        <div class="form-group">
            <div class="col-md-4">
                <input class="form-control" placeholder="Search by age" type="text" name="sAge" id="sAge">
            </div>

            <div class="col-md-4">
                <select name="ageChoice">
                    <option id="ageChoice4" value="exact">Exact</option>
                    <option id="ageChoice5" value="less">Less Than</option>
                    <option id="ageChoice6" value="more">Greater than</option>
                </select>
            </div>

            <!--div class="col-md-4">
                <input type="radio" name="ageChoice" id="ageChoice1" value="exact" checked> Exact<br>
                <input type="radio" name="ageChoice" id="ageChoice2" value="less"> Less than<br>
                <input type="radio" name="ageChoice" id="ageChoice3" value="more"> Greater than<br>
            </div-->
        </div>
        <div class="form-group">
            <button class="btn btn-primary col-md-offset-2" type="submit"><i class="fa fa-search">
                SEARCH</i></button>
        </div>
    </g:form>
    <div class="page-header"><h1>Search Results</h1></div>
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
                <td><g:link controller="users" action="show"
                            id="${it.id}">${it.id}</g:link></td>
                <td>${it.firstName}</td>
                <td>${it.lastName}</td>
                <td>${it.email}</td>
                <td>${it.age}</td>
                <td><button class="btn btn-info">
                    <g:link controller="users" action="edit" id="${it.id}">Edit</g:link>
                </button>
                    <g:link onclick="return myFunction()"
                            controller="users" action="delete" id="${it.id}">
                        Delete </g:link></td>
                <script>
                    function myFunction() {
                        return confirm("It will delete the record ");
                    }
                </script>
            </tr>
        </g:each>
        </tbody>
    </table>

</content>
</body>
</html>
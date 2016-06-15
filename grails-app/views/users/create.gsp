    <%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Sign-up</title>
    <asset:stylesheet href="bootstrap.css"/>
    <asset:javascript src="bootstrap.js"/>
    <asset:javascript src="jquery.min.js"/>
</head>
<body>

<g:render template="/templates/mynavbar" model="[myCurrentPage:'create']"></g:render>

<div class="container">
    <div class="page-header"><h1> SIGN-UP FORM</h1></div>
    <form class="form-horizontal" action="/learning-management/users/save">
        <div class="form-group">
            <label class="control-label col-md-2" for="firstname">Firstname </label>
            <div class="col-md-8"><input class="form-control" type="text" name="firstname" id="firstname" placeholder="Enter First name"></div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-2" for="lastname">Lastname </label>
            <div class="col-md-8"><input class="form-control" type="text" name="lastname" id="lastname" placeholder="Enter Last name"></div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-2" for="email">Email </label>
            <div class="col-md-8"><input class="form-control" type="email" name="email" id="email" placeholder="Enter email id"></div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-2" for="age">Age </label>
            <div class="col-md-8"><input class="form-control" type="number" name="age" id="age" placeholder="Enter age"></div>
        </div>
        <div class="form-group">
            <button class="btn btn-primary col-md-offset-2" type="submit">SUBMIT</button>
        </div>
    </form>
</div>
</body>
</html>
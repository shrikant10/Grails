    <%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Sign-up</title>
    <meta name="layout" content="abc" />
</head>
<body>
<div class="container">

    <content tag="main">
        <div class="page-header"><h1> SIGN-UP FORM</h1></div>
        <g:form method="post" class="form-horizontal" controller="users" action="save">
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
    </g:form>
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
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
                <div class="form-group ${hasErrors(bean:myUser,field:'firstName','has-errors')}">
                <label class="control-label col-md-2" for="firstname">Firstname </label>
                <div class="col-md-8">
                    <input class="form-control" value="${myUser.firstName}" type="text" name="firstname" id="firstname"
                                             placeholder="Enter First name">
                    <g:renderErrors bean="${myUser}" field="firstName" />
                </div>
            </div>
            <div class="form-group ${hasErrors(bean:myUser,field:'lastName','has-errors')}">
                <label class="control-label col-md-2" for="lastname">Lastname </label>
                <div class="col-md-8"><input class="form-control" type="text" value="${myUser.lastName}" name="lastname"
                                             id="lastname"
                                             placeholder="Enter Last name"></div>
                <g:renderErrors bean="${myUser}" field="lastName" />
            </div>
            <div class="form-group ${hasErrors(bean:myUser,field:'email','has-errors')}">
                <label class="control-label col-md-2" for="email">Email </label>
                <div class="col-md-8"><input class="form-control" type="text" name="email" id="email"
                                             value="${myUser.email}" placeholder="Enter email id"></div>
                <g:renderErrors bean="${myUser}" field="email" />
            </div>
            <div class="form-group ${hasErrors(bean:myUser,field:'age','has-errors')}">
                <label class="control-label col-md-2" for="age">Age </label>
                <div class="col-md-8">
                    <input class="form-control" type="number" value="${myUser.age}" name="age" id="age"
                           placeholder="Enter age">
                    <g:renderErrors bean="${myUser}" field="age" />
                </div>
            </div>
            <div class="form-group">
                <button class="btn btn-primary col-md-offset-2" type="submit">SUBMIT</button>
            </div>
    </g:form>
    </content>
</div>
</body>
</html>
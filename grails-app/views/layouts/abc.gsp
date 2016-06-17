<%--
  Created by IntelliJ IDEA.
  User: shrikant
  Date: 16/6/16
  Time: 11:50 AM
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <asset:stylesheet href="bootstrap.css"/>
    <asset:javascript src="bootstrap.js"/>
    <asset:javascript src="jquery.min.js"/>
    <g:layoutHead/>
    <title>Form layout</title>
    <style>
    .footer {
        height: 180px;
        background-color: #000000;
        position: relative;
        padding-top: 60px;
        font-weight: 600;
        color: #ffffff;
        margin-top: 100px;
        text-align: center;
    }
    </style>
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#bs">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand ls" href="#"><b>FORM</b></a>
        </div>
        <div class="container collapse navbar-collapse" id="bs">
            <ul class="nav navbar-nav navbar-right">
                <li class="ls ${params.action=='create'?'active':''}">
                    <g:link controller="users" action="create"><b>CREATE</b></g:link>
                </li>
                <li class="ls ${params.action=='show'?'active':''}">
                    <g:link controller="users" action="show"><b>SHOW</b></g:link>
                </li>
                <li class="ls ${params.action=='list'?'active':''}">
                    <g:link controller="users" action="list"><b>LIST</b></g:link>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="col-md-9">
        <g:pageProperty name="page.main" />
    </div>
    <div class="col-md-3" style="text-align: justify">
        <g:pageProperty name="page.side" />
    </div>
</div>
<div class="container-fluid footer common">
    <div class="page-header"><h1> ORIGIN OF LIFE </h1></div>
</div>
</body>
</html>
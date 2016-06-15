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
                <li class="ls ${(myCurrentPage =='create')? 'active':''}">
                    <g:link controller="users" action="create"><b>CREATE</b></g:link>
                </li>
                <li class="ls ${(myCurrentPage =='show')? 'active':''}">
                    <g:link controller="users" action="show"><b>SHOW</b></g:link>
                </li>
                <li class="ls ${(myCurrentPage =='list')? 'active':''}">
                    <g:link controller="users" action="list"><b>LIST</b></g:link>
                </li>
            </ul>
        </div>
    </div>
</nav>
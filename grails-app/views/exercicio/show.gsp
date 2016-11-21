<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'exercicio.label', default: 'Exercicio')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
        <meta charset="utf-8">
        <meta name="layout" content="main" />
        <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="../../assets/style.css"/>
    </head>
    <body>
        <div id="header">
            <div id="nav">
                <div class="logo-p-escopo">
                    <img src="../../assets/logobranco.png"/>
                </div>
            </div>
        </div>  

        <div class="grid80">
        <div id="show-exercicio" class="content scaffold-show page-header" role="main">
            <h1><span class="glyphicon glyphicon-flash" aria-hidden="true"></span> Exercício ${exercicio.id}</h1>
            <div class="nav" role="navigation">
                <ul>
                    <li><a class="home" href="${createLink(uri: '/')}"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> <g:message code="default.home.label"/></a></li>
                    <li><g:link class="list" action="index"><span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> <g:message code="default.list.label" args="[entityName]" /></g:link></li>
                    <li><g:link class="create" action="create"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> <g:message code="default.new.label" args="[entityName]" /></g:link></li>
                </ul>
            </div>

            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <f:display bean="exercicio"/>

            <g:form resource="${this.exercicio}" method="DELETE">
                <div class="nav" >
                    <ul>
                        <li><g:link class="edit" action="edit" resource="${this.exercicio}"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> <g:message code="default.button.edit.label" default="Edit" /></g:link></li>
                        <li><input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/></li>
                    </ul>
                   
                </div>
            </g:form>

        </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.1.0.min.js" integrity="sha256-cCueBR6CsyA4/9szpPfrX3s49M9vUU5BgtiJj06wt/s=" crossorigin="anonymous"></script>
    </body>
</html>

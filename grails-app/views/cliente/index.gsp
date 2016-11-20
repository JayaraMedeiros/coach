<!DOCTYPE html>
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
        <meta name="layout" content="main" />
        <asset:link rel="icon" href="../../assets/favicon.ico" type="image/x-ico"/>
        <g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="../assets/style.css"/>
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

        <div id="list-cliente" class="content scaffold-list page-header" role="main">
            <h1><span class="glyphicon glyphicon-user" aria-hidden="true"></span> <g:message code="default.list.label" args="[entityName]" /></h1>

            <div class="nav" role="navigation">
                <ul>
                    <li><a class="home" href="${createLink(uri: '/')}"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> <g:message code="default.home.label"/></a></li>

                    <li><g:link class="create" action="create"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> <g:message code="default.new.label" args="[entityName]" /></g:link></li>
                </ul>
            </div>
            
            <f:table collection="${clienteList}" />

            <div class="pagination">
                <g:paginate total="${clienteCount ?: 0}" />
            </div>
        </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.1.0.min.js" integrity="sha256-cCueBR6CsyA4/9szpPfrX3s49M9vUU5BgtiJj06wt/s=" crossorigin="anonymous"></script>
        <script type="text/javascript">
        $( "th" ).removeClass( "sortable" );
        $( "table" ).addClass( "table table-hover" );
        </script>

    </body>
</html>
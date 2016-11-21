<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Coach Control</title>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/style.css"/>
</head>
<body>
    <div id="tudo">
    <div class="logo-escopo" role="presentation">
        <asset:image src="logobranco.png" class="logo"/>
    </div>
    <div id="content" role="main">
        <section class="row colset-2-its">
            <div id="controllers" role="navigation">
                <ul>
                    <!--<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <li class="controller">
                            <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                        </li>
                    </g:each>-->
                    <li >
                        <a class="btn btn-default btn-lg" href="/cliente/index"><span class="glyphicon glyphicon-user" aria-hidden="true"></span><br/>Cliente</a>
                    </li>
                    <li >
                        <a class="btn btn-default btn-lg" href="/questionario/index"><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span><br/>Formulários</a>
                    </li>
                    <li >
                        <a class="btn btn-default btn-lg" href="/exercicio/index"><span class="glyphicon glyphicon-flash" aria-hidden="true"></span><br/>Exercícios</a>
                    </li>
                    <li >
                        <a class="btn btn-default btn-lg" href="/relatorio/index"><span class="glyphicon glyphicon-object-align-bottom" aria-hidden="true"></span><br/>Relatórios</a>
                    </li>

                </ul>
            </div>
        </section>
    </div>
    </div>
</body>
</html>

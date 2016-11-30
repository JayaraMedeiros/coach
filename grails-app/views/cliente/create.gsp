<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <asset:link rel="icon" href="../../assets/favicon.ico" type="image/x-ico"/>
        <g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
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
        <form action="save" method="POST">
                <div id="menu-cliente" class="content scaffold-list page-header" role="main">
                    <h1 class="text-center">Cadastrar Cliente</h1> 
                    <div class="nav" role="navigation">
                        <ul>
                            <li><a class="home" href="${createLink(uri: '/')}"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> <g:message code="default.home.label"/></a></li>
                            <!--<li><a class="imprimir" href="javascript:void(0)" onclick="imprimir()" style="cursor: pointer;"><span class="glyphicon glyphicon-print" aria-hidden="true"></span> Imprimir</a></li>-->
                            <li><input type="submit" value="Salvar" class="btn btn-primary"></li>
                        </ul>
                    </div>
                </div>

                <div>
                    <div class="form-group">

                        <div class="grid50">
                            <label for="usr">Nome:</label>
                            <input type="text" class="form-control" name="nome">
                            <label for="usr">Endereço:</label>
                            <input type="text" class="form-control" name="endereco">
                            <label for="usr">Email:</label>
                            <input type="email" class="form-control" name="email">
                        </div>  

                        <div class="grid20">
                            <label for="usr">Apelido:</label>
                            <input type="text" class="form-control" name="apelido">
                            <label for="usr">Profissão:</label>
                            <input type="text" class="form-control" name="profissao">
                            <label for="usr">Contato1:</label>
                            <input type="text" class="form-control" name="contato1">
                        </div>
                        <div class="grid20">
                            <label for="usr">Idade:</label>
                            <input type="text" class="form-control" name="idade">
                            <label for="usr">Data de Nascimento:</label>
                            <input type="date" class="form-control" name="dataDeNascimento">
                            <label for="usr">Contato2:</label>
                            <input type="text" class="form-control" name="contato2">
                            <label for="usr">Contato de um parente:</label>
                            <input type="text" class="form-control" name="contatoparente">  
                        </div>
                        
                    </div>
                </div>         
        </form>
        </div>
        <!--JavaScript da página-->          
        <script src="https://code.jquery.com/jquery-3.1.0.min.js" integrity="sha256-cCueBR6CsyA4/9szpPfrX3s49M9vUU5BgtiJj06wt/s=" crossorigin="anonymous"></script>
        <link rel="javascript"  href="questionarioJS.js"/> 
    </body>
</html>

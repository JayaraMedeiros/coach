<!DOCTYPE html>
<html>
    <head>
        <title> Cadastrar Formulário</title>
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
        
        <form action="save" method="POST">
            <div class="questionario">
                <div id="menu-questionario" class="content scaffold-list page-header" role="main">
                    <h1 class="text-center">Criar Formulário</h1> 
                    <div class="nav" role="navigation">
                        <ul>
                            <li><a class="home" href="${createLink(uri: '/')}"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> <g:message code="default.home.label"/></a></li>
                            <li><a class="imprimir" href="javascript:void(0)" onclick="imprimir()" style="cursor: pointer;"><span class="glyphicon glyphicon-print" aria-hidden="true"></span> Imprimir</a></li>
                            <li><input type="submit" value="Salvar" class="btn btn-primary"></li>
                        </ul>
                    </div>
                </div>
                <div class="pre-questionario">
                    <input type="text" id="in-nome-formulario" name="nomeQuestionario" class="form-control" placeholder="Nome do Questionário">
                    <h4>Selecione o tipo do Questionário:</h4> 
                    <label class="radio-inline">
                        <input type="radio" name="tipo" value="Anamnese">Anamnese
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="tipo" value="Outro">Outro
                    </label>
                </div>
                
                <form action="save" method="POST" controller="pergunta">
                    <div id="div-perguntas" style="display: none;"></div>
                </form>
                

                <div class="botoes-pergunta" style="margin-bottom: 20px">
                    <h4>Adicionar uma questão:</h4>
                    <a id="btnPerguntaSub" class="btn btn-default"><h5>Subjetiva</h5></a>
                    <a id="btnPerguntaUnic" class="btn btn-default"><h5>Única Escolha</h5></a>
                    <a id="btnPerguntaMult" class="btn btn-default"><h5>Múltipla Escolha</h5></a>
                </div>

            </div>
        </form>
        </div>

        <!--JavaScript da página-->          
        <script src="https://code.jquery.com/jquery-3.1.0.min.js" integrity="sha256-cCueBR6CsyA4/9szpPfrX3s49M9vUU5BgtiJj06wt/s=" crossorigin="anonymous"></script>
        <link rel="javascript"  href="QuestionarioController.js"/>
    </body>
</html>

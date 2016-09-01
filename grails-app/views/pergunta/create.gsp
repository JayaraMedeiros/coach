<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'pergunta.label', default: 'Pergunta')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>

    <body>
       
    <form action="save" method="POST">
            <div class="container">
                <div class="jumbotron">
                    <h1 class="text-center">Cadastrar Perguntas do Questionário</h1> 
                </div>

                <div class="well">
                    <div class="form-group">
                        <p class="text-center">
                            <h3>Selecione o tipo de Pergunta</h3> 
                       
                            <label class="radio-inline">
                                <input type="radio" name="tipo" value="Subjetiva">Subjetiva
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="tipo" value="UnicaEscola">Única EscolhaSS
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="tipo" value="Adposidade">Múltipla Escolha
                            </label>
                         </p>
                    </div>
                    <input type="submit" class="btn btn-primary" value="Confirmar">
                </div>
            </div>
        </form>

    </body>
</html>

<!DOCTYPE html>
<html>
    <head>
        <title> Cadastrar Formulário</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../../assets/questionarioCSS.css">
    </head>

    <body>
        <form action="save" method="POST">
            <div class="container" >

                <h1 class="text-center">Criar Formulário</h1> 
                <div class="contaider" id="div-questionario">                
                    <div class="well">
                        <h3>Selecione o tipo do Questionário</h3> 
                            <label class="radio-inline">
                                <input type="radio" name="tipo" value="Anamnese">Anamnese
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="tipo" value="Outro">Outro
                            </label>
                            <input type="text" id="in-nome-formulario" name="nomeQuestionario" class="form-control" placeholder="Nome do Questionário">
                    </div> 
                    <div style="margin-bottom: 20px">
                        <h4>Adicionar uma questão:</h4>
                        <input id="btnPerguntaSub" class="btn btn-primary" type="button" name="tipoPergunta" value="Subjetiva">
                        <input id="btnPerguntaUnic" class="btn btn-primary" type="button" name="tipoPergunta" value="UnicaEscolha">
                        <input id="btnPerguntaMult" class="btn btn-primary" type="button" name="tipoPergunta" value="MultiplaEscolha">
                        <br>
                    </div>

                    <div id="div-perguntas" style="display: none;"></div>
                    
                </div>
            </div>
        </form>
        <script src="https://code.jquery.com/jquery-3.1.0.min.js" integrity="sha256-cCueBR6CsyA4/9szpPfrX3s49M9vUU5BgtiJj06wt/s=" crossorigin="anonymous"></script>
        <script type="text/javascript" src="../../assets/questionarioJS.js"></script>
    </body>

</html>

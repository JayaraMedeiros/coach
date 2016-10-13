<!DOCTYPE html>
<html>
    <head>
        <title> Cadastrar Formulário</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.1.0.min.js" integrity="sha256-cCueBR6CsyA4/9szpPfrX3s49M9vUU5BgtiJj06wt/s=" crossorigin="anonymous"></script>
        <script type="text/javascript" src="../../assets/questionarioJS.js"></script>

    </head>

    <body style="background-color: rgb(173,216,230);">
        <form action="save" method="POST">
            <div class="container" >
                <h1 class="text-center">Criar Formulário</h1> 
                <div class="container" id="div-questionario">                
                    <div class="well">
                        <h3>Selecione o tipo de Formulário</h3> 
                            <label class="radio-inline">
                                <input type="radio" name="tipo" value="Anamnese">Anamnese
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="tipo" value="Outro">Outro
                            </label>
                        <h4> Nome do Formulário: <input type="text" id="in-nome-formulario" name="nomeQuestionario" class="form-control"></h4>
                        <button id="btn-colocar-pergunta" type="button" class="btn btn-primary">Inserir Pergunta</button>
                    </div> 

                    <div class="well" id="div-list-perguntas" style="display: none;"></div>       
                    <div class="well" id="div-perguntas" style="display: none;"></div>
                </div>
            </div>
        </form>

    </body>

</html>

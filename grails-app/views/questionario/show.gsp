<!DOCTYPE html>
<html>
    <head>
       <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
       <title>Questionário</title>
       <script src="https://code.jquery.com/jquery-3.1.0.min.js" integrity="sha256-cCueBR6CsyA4/9szpPfrX3s49M9vUU5BgtiJj06wt/s=" crossorigin="anonymous"></script>
       <script type="text/javascript" src="../../assets/questionarioJS.js"></script>

    </head>

   
    
    <body>
        <div class="container" id="div-questionario">
            <h1 class="text-center">Questionário</h1>

            <div class="well">
                <h3>Tipo do questionário:</h3>
                <p class="bg-info">${questionario.tipo}</p>
                
                <button id="btn-colocar-pergunta" class="btn btn-primary">Inserir Pergunta</button>
            </div>

            <div class="well" id="div-list-perguntas" style="display: none;"></div>
            
            <div class="well" id="div-perguntas" style="display: none;"></div>

                
            </div>
            
        </div>

   
   
    </body>
</html>

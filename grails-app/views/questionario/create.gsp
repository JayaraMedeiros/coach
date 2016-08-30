<!DOCTYPE html>
<html>
    <head>
        <title> Cadastrar Questionário</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    </head>

    <body>
        <form action="save" method="POST">
            <div class="container">
                <div class="jumbotron">
                    <h1 class="text-center">Criar Questionário</h1> 
                </div>

                <div class="well">
                    <div class="form-group">
                        <p class="text-center">
                            <h3>Selecione o tipo de Questionário</h3> 
                       
                            <label class="radio-inline">
                                <input type="radio" name="tipo" value="Anamnese">Anamnese
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="tipo" value="Perimetria">Avaliação Perimétrica
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="tipo" value="Adposidade">Avaliação de Adposidade
                            </label>
                         </p>
                    </div>
                    <input type="submit" class="btn btn-primary" value="Confirmar">
                </div>
            </div>
        </form>
    </body>
</html>

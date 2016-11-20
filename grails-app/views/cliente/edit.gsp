<!DOCTYPE html>
<html>
    <head>
        <title> Cadastrar Cliente</title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
       <!-- <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>-->
    </head>

    <body background-color="lightblue">
        <form action="save" method="POST">
            <div class="container">
                <div class="jumbotron">
                    <h3 class="text-center">Criar cliente</h3> 
                </div>
                <div class="well">
                    <div class="form-group">
                        <label for="usr">Name:</label>
                        <input type="text" class="form-control" name="nome">
                        <label for="usr">Apelido:</label>
                        <input type="text" class="form-control" name="apelido">
                        <label for="usr">Profissão:</label>
                        <input type="text" class="form-control" name="profissao">
                        <label for="usr">Contato1:</label>
                        <input type="text" class="form-control" name="contato1">
                        <label for="usr">Contato2:</label>
                        <input type="text" class="form-control" name="contato2">
                        <label for="usr">Contato de um parente:</label>
                        <input type="text" class="form-control" name="contatoparente">
                        <label for="usr">Endereço:</label>
                        <input type="text" class="form-control" name="endereco">
                        <label for="usr">Data de Nascimento:</label>
                        <input type="date" class="form-control" name="dataDeNascimento">
                        <label for="usr">Idade:</label>
                        <input type="number" class="form-control" name="idade">
                        <label for="usr">Email:</label>
                        <input type="email" class="form-control" name="email">
                    </div>

                    <input type="submit" class="btn btn-primary" value="Salvar">
                </div>         
            </div>
        </form>
    </body>
</html>

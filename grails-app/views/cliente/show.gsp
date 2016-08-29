<!DOCTYPE html>
<html>
    <head>
        <title>Mostrar Cliente</title>
        <!-- Required meta tags always come first -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.3/css/bootstrap.min.css" integrity="sha384-MIwDKRSSImVFAZCVLtU0LMDdON6KVCrZHyVQQj6e8wIEJkW4tvwqXrbMIya1vriY" crossorigin="anonymous">
    </head>

    <body>

    <!-- jQuery first, then Tether, then Bootstrap JS. 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js" integrity="sha384-THPy051/pYDQGanwU6poAc/hOdQxjnOEXzbT+OuUAFqNqFjL+4IGLBgCJC3ZOShY" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js" integrity="sha384-Plbmg8JY28KFelvJVai01l8WyZzrYWG825m+cZ0eDDS1f7d/js6ikvy1+X+guPIB" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.3/js/bootstrap.min.js" integrity="sha384-ux8v3A6CPtOTqOzMKiuo3d/DomGaaClxFYdCu2HPMBEkf6x2xiDyJ7gkXU0MWwaD" crossorigin="anonymous"></script> -->

    <div class="container">
        <div class="jumbotron">
            <h1 class="text-center">Cliente</h1>
            <p>
                <h3>Detalhamento de dados do Cliente</h3>
            </p>
        </div>
        <div class="table-responsive">
        <table class="table table-hover">
            <thead>
                <tr>
                  <th>Identificação do Cliente</th>
                  <th>${cliente.id}</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                  <th scope="row">Nome</th>
                  <td>${cliente.nome}</td>
                </tr>
                <tr>
                  <th scope="row">Apelido</th>
                  <td>${cliente.apelido}</td>
                </tr>
                <tr>
                  <th scope="row">Idade</th>
                  <td colspan="2">${cliente.idade}</td>
                </tr>
                <tr>
                  <th scope="row">Data de Nascimento</th>
                  <td colspan="2">${cliente.dataDeNascimento}</td>
                </tr>
                <tr>
                  <th scope="row">Profissão</th>
                  <td colspan="2">${cliente.profissao}</td>
                </tr>
                <tr>
                  <th scope="row">Endereço</th>
                  <td colspan="2">${cliente.endereco}</td>
                </tr>
                <tr>
                  <th scope="row">Email</th>
                  <td colspan="2">${cliente.email}</td>
                </tr>
                <tr>
                  <th scope="row">Contato1</th>
                  <td colspan="2">${cliente.contato1}</td>
                </tr>
                <tr>
                  <th scope="row">Contato2</th>
                  <td colspan="2">${cliente.contato2}</td>
                </tr>
                <tr>
                  <th scope="row">Contato do Parente</th>
                  <td colspan="2">${cliente.contatoparente}</td>
                </tr>
            </tbody>
        </table>
        </div>
    </div>
   
    </body>
</html>

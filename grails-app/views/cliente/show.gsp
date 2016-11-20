<!DOCTYPE html>
<html>
  <head>
    <title>Mostrar Cliente</title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
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
      <div id="list-cliente" class="content scaffold-list page-header" role="main">
          <h1><span class="glyphicon glyphicon-user" aria-hidden="true"></span> ${cliente.nome}</h1>
          
            <div class="nav" role="navigation">
                <ul>
                    <li><a class="home" href="${createLink(uri: '/')}"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> <g:message code="default.home.label"/></a></li>
                    <li><a class="home" href="javascript:void(0)" onclick="imprimir()" style="cursor: pointer;"><span class="glyphicon glyphicon-print" aria-hidden="true"></span> Imprimir</a></li>
                    <li><a class="home" href="${createLink(uri: '/')}"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Excluir</a></li>
                    <li><g:link class="create" action="create"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Editar</g:link></li>
                </ul>
            </div>
      </div>

      <div class="grid20">
        <ul class="nav nav-pills nav-stacked">
          <li role="presentation"><a href="javascript:void(0)" class="tablink" onclick="openCliente(event, 'Perfil')">Perfil</a></li>
          <li role="presentation"><a href="javascript:void(0)" class="tablink" onclick="openCliente(event, 'Anamnese')">Anamnese</a></li>
          <li role="presentation"><a href="javascript:void(0)" class="tablink" onclick="openCliente(event, 'Avaliacao')">Avaliação</a></li>
          <li role="presentation"><a href="javascript:void(0)" class="tablink" onclick="openCliente(event, 'Treino')">Treino</a></li>
        </ul>
      </div>

      <div class="grid80">
      <div id="Perfil" class="table-responsive cliente" >
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
      <div id="Anamnese" class="cliente">
        Aminésia de Wermeson
      </div>
      <div id="Avaliacao" class="cliente">
        Doidice de Jayara
      </div>
      <div id="Treino" class="cliente">
        Treinando as cachola
      </div>

    </div>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.1.0.min.js" integrity="sha256-cCueBR6CsyA4/9szpPfrX3s49M9vUU5BgtiJj06wt/s=" crossorigin="anonymous"></script>
    <script type="text/javascript">
      $( "th" ).removeClass( "sortable" );
      $( "table" ).addClass( "table table-hover" );
    </script>
    <script>
      function imprimir() {
      window.print();
      }
    </script>
    <script>
      function openCliente(evt, clienteName) {
        var i, x, tablinks;
        x = document.getElementsByClassName("cliente");
        for (i = 0; i < x.length; i++) {
           x[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablink");
        for (i = 0; i < x.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" w3-red", "");
        }
        document.getElementById(clienteName).style.display = "block";
        evt.currentTarget.className += " w3-red";
    }
    </script>
    </body>
</html>

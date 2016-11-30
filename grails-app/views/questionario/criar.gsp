<!doctype html>
<html ng-app="formapp">
  <head>
    <title> Cadastrar Formulário</title>
    <meta charset="utf-8">
    <meta name="layout" content="main" />
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="../../assets/style.css"/>
    <script rel="javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.0-rc.2/angular.min.js"></script>
    <script rel="javascript" src="form.js"></script>
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
    <h2>Criar Formulário</h2>

    <div ng-controller="jayc">
      {{text}}
    </div>
    
  </body>
</html>
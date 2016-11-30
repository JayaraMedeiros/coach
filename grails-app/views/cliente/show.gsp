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
            <!--<div class="nav" role="navigation">
                <ul>
                    <li><a class="home" href="${createLink(uri: '/')}"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> <g:message code="default.home.label"/></a></li>
                    <li><a class="home" href="javascript:void(0)" onclick="imprimir()" style="cursor: pointer;"><span class="glyphicon glyphicon-print" aria-hidden="true"></span> Imprimir</a></li>
                    <li><a class="delete" href=""><span class="glyphicon glyphicon-remove" aria-hidden="true"></span> Excluir</a></li>
                    <li><g:link class="create" action="create"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Editar</g:link></li>
                </ul>
            </div>-->
                <div class="nav" role="navigation">
                  <g:form resource="${this.cliente}" method="DELETE">
                    <ul>
                      <li><a class="home" href="${createLink(uri: '/')}"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> <g:message code="default.home.label"/></a></li>
                      <li><g:link class="edit" action="edit" resource="${this.cliente}"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> <g:message code="default.button.edit.label" default="Edit" /></g:link></li>
                      <li><input class="delete btn btn-default" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/></li>
                    </ul>
                  </g:form> 
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
        <h3>Anamnese Atual de ${cliente.nome} <h5> Data: 03/07/2016</h5></h3>
        <div id="div-imc" class="grid40">
          <div class="form-group">
            <label for="disabledTextInput">Possui algum tipo de alergia? Explique sua resposta.</label>
            <textarea class="form-control" rows="3" name="alergia"></textarea>
          </div>
          <div class="form-group">
            <label for="disabledTextInput">Quantas vezes pratica atividade física por semana?</label>
            <form action="">
              <input type="radio" name="gender" value="male"> nenhuma<br>
              <input type="radio" name="gender" value="female"> raramente<br>
              <input type="radio" name="gender" value="female"> 1 vez<br>
              <input type="radio" name="gender" value="female"> 3 vezes<br>
              <input type="radio" name="gender" value="other"> diariamente
            </form>
          </div>
          <div class="form-group">
            <label for="disabledTextInput">É fumante? Especifique a quantidade de tabaco consumida por dia.</label>
            <textarea class="form-control" rows="3" name="alergia"></textarea>
          </div>
          <div class="form-group">
            <label for="disabledTextInput">Escifique o quadro de doenças antecedentes familiares?</label>
            <textarea class="form-control" rows="3" name="alergia"></textarea>
          </div>
        </div>

        <div id="div-imc" class="grid40">
          <div class="form-group">
            <label for="disabledTextInput">Quantos copos de água (americano) bebe por dia?</label>
            <form action="">
              <input type="radio" name="gender" value="male"> 1 a 3<br>
              <input type="radio" name="gender" value="female"> 4 a 5<br>
              <input type="radio" name="gender" value="other"> mais do que 5
            </form>
          </div>
          <div class="form-group">
            <label for="disabledTextInput">Atualmente, faz uso de algum medicamento? Caso faça, especifique a posologia.</label>
            <textarea class="form-control" rows="3" name="medicamento"></textarea>
          </div>
          
          <div class="form-group">
            <label for="disabledTextInput">Ingere bebida alcóolica?</label>
            <input class="form-control input-sm" type="float" name="alcool"/>
            <form action="">
              <label for="descricao">Caso sim, especifique a quantidade</label><br>
              <input type="radio" name="gender" value="male"> diariamente<br>
              <input type="radio" name="gender" value="female"> nos finais de semana<br>
              <input type="radio" name="gender" value="other"> casualmente
            </form>
          </div>
          <div class="form-group">
            <label for="disabledTextInput">Possui alguma das patologias abaixo? Marque quantas for necessário</label>
            <form>
              <label class="checkbox-inline">
                <input type="checkbox" value="">Cardiopulmonar
              </label>
              <label class="checkbox-inline">
                <input type="checkbox" value="">Abdominal/gastrointestinal
              </label>
            </form>
            <form>
              <label class="checkbox-inline">
                <input type="checkbox" value="">Urinário
              </label>
              <label class="checkbox-inline">
                <input type="checkbox" value="">Articulações
              </label>
            </form>
            <form>
              <label class="checkbox-inline">
                <input type="checkbox" value="">Muscular
              </label>
            </form>
          </div>
        </div>


      </div>

      <div id="Avaliacao" class="cliente">
        <h3> Avaliação Atual de ${cliente.nome} <h5> Data: 19/07/2016</h5></h3>
        <div id="div-imc" class="grid20">
          <div class="form-group">
            <label for="disabledTextInput">Peso</label>
            <input class="form-control input-sm" type="float" name="peso"/>
          </div>
          <div class="form-group">
            <label for="disabledTextInput">Altura</label>
            <input class="form-control input-sm" type="float" name="altura"/>
          </div>
          <div class="form-group">
            <label for="disabledTextInput">Imc</label>
            <input class="form-control input-sm" type="float" name="imc"/>
          </div>
          <div class="form-group">
            <label for="disabledTextInput">Braço direito</label>
            <input class="form-control input-sm" type="float" name="bracoDir"/>
          </div>
        </div>

        <div id="membro-superior" class="grid20">
          <div class="form-group">
            <label for="disabledTextInput">Braço esquerdo</label>
            <input class="form-control input-sm" type="float" name="bracoEsq"/>
          </div>
          <div class="form-group">
            <label for="disabledTextInput">Braço dir contraído</label>
            <input class="form-control input-sm" type="float" name="bracoDirCon"/>
          </div>
          <div class="form-group">
            <label for="disabledTextInput">Braço esq contraído</label>
            <input class="form-control input-sm" type="float" name="bracoEsqCon"/>
          </div>
          <div class="form-group">
            <label for="disabledTextInput">Ombros</label>
            <input class="form-control input-sm" type="float" name="ombros"/>
          </div>
        </div>

        <div id="div-corpo" class="grid20">
          <div class="form-group">
            <label for="disabledTextInput">Torax</label>
            <input class="form-control input-sm" type="float" name="torax"/>
          </div>
          <div class="form-group">
            <label for="disabledTextInput">Cintura</label>
            <input class="form-control input-sm" type="float" name="cintura"/>
          </div>
          <div class="form-group">
            <label for="disabledTextInput">Abdomen</label>
            <input class="form-control input-sm" type="float" name="abdomen"/>
          </div>
          <div class="form-group">
            <label for="disabledTextInput">Quadril</label>
            <input class="form-control input-sm" type="float" name="quadril"/>
          </div>
        </div>

        <div id="pre-membros" class="grid20">
          <div class="form-group">
            <label for="disabledTextInput">Antebraço dir</label>
            <input class="form-control input-sm" type="float" name="antebracoDir"/>
          </div>
          <div class="form-group">
            <label for="disabledTextInput">Antebraço esq</label>
            <input class="form-control input-sm" type="float" name="antebracoEsq"/>
          </div>
          <div class="form-group">
            <label for="disabledTextInput">Panturrilha dir</label>
            <input class="form-control input-sm" type="float" name="panturrilhaDir"/>
          </div>
          <div class="form-group">
            <label for="disabledTextInput">Panturrilha esq</label>
            <input class="form-control input-sm" type="float" name="panturrilhaEsq"/>
          </div>
        </div>

        <div id="div-coxa" class="grid20">
        <div class="form-group">
            <label for="disabledTextInput">Coxa dir</label>
            <input class="form-control input-sm" type="float" name="coxaDir"/>
          </div>
          <div class="form-group">
            <label for="disabledTextInput">Coxa esq</label>
            <input class="form-control input-sm" type="float" name="coxEsq"/>
          </div>
          <div class="form-group">
            <label for="disabledTextInput">Coxa distal dir</label>
            <input class="form-control input-sm" type="float" name="coxaDirDis"/>
          </div>
          <div class="form-group">
            <label for="disabledTextInput">Coxa distal esq</label>
            <input class="form-control input-sm" type="float" name="coxaEsqDis"/>
          </div>
        </div>

        <div id="div-observação">
          <div class="form-group">
            <label for="disabledTextInput">Observações: </label>
            <textarea class="form-control" rows="5" name="observacao"></textarea>
          </div>
        </div>
      </div>

      <div id="Treino" class="cliente">
        <h3>Treino Atual <h5> Período: 07/novembro a 07/dezembro-2016</h5></h3>
        <div>
          <table class="table table-hover">
            <thead>
              <tr>
                <th>Ordem</th>
                <th>Exercício</th>
                <th>Nº de séries</th>
                <th>Nº de repetições</th>
                <th>Duração(min)</th>
                <th>Intervalo(s)</th>
                <th>Carga(kg)</th>
                <th>Grupo Muscular</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>2</td>
                <td>3</td>
                <td>4</td>
                <td>5</td>
              </tr>
              <tr>
                <td>Agachamento</td>
                <td>Avanço(passada)</td>
                <td>Prancha</td>
                <td>Supino reto</td>
                <td>Cadeira adutora</td>
              </tr>
              <tr>
                <td>3</td>
                <td>2</td>
                <td>1</td>
                <td>3</td>
                <td>3</td>
              </tr>
              <tr>
                <td>15</td>
                <td>20</td>
                <td>1</td>
                <td></td>
                <td>3</td>
              </tr>
              <tr>
                <td>---</td>
                <td>---</td>
                <td>1</td>
                <td>---</td>
                <td>---</td>
              </tr>
              <tr>
                <td>10</td>
                <td>30</td>
                <td>20</td>
                <td>10</td>
                <td>10</td>
              </tr>
              <tr>
                <td>---</td>
                <td>---</td>
                <td>---</td>
                <td>20</td>
                <td>40</td>
              </tr>
              <tr>
                <td>coxa, glúteo</td>
                <td>membros inferiores</td>
                <td>abdomen</td>
                <td>braço</td>
                <td>coxa</td>
              </tr>
            </tbody>
          </table>
        </div>
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

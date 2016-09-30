$(function(){
	
	function cadastraPergunta(){//função que insere os elementos para o cadastro de perguntas
		
		console.log("oi titia jay");//para saber se a função está sendo chamada

		var $novaPergunta = $("#div-perguntas")
						.addClass("jumbotron")
						.append($('<h4 />')
            			.text("Descrição da pergunta: "))
            .append($("<div />")
            			.addClass("form-group")
            			.append($("<textarea />")
            						.addClass("form-control")
            						.attr("rows", "5")
            						.attr("name", "descricaoPergunta")))
            .append($('<h4 />')
            			.text("Tipo da pergunta: "))
            .append($('<div/> ')
            			.addClass("radio")
            			.append($('<input type="radio" id="radioSubjetiva" name="tipoPergunta"> Subjetiva<br>'))
            			.append($('<input type="radio" id="radioUnicaEscolha" name="tipoPergunta"> Única Escolha<br>'))
						.append($('<input type="radio" id="radioMultiplaEscolha" name="tipoPergunta"> Múltipla Esscolha<br>')))
            			.append($('<br><button type="button" id="colocar-alternativa" class="btn btn-primary" disabled>Cadastrar Alternativa</button>'))
            			.append($('<btn-defaultton type="button" id="btn-salva-pergunta" class="btn btn-default disabled">Salvar Pergunta</button>'));


        $("#div-perguntas").css("display", "block"); //Torna a div da pergunta visível

    	$novaPergunta.appendTo("#div-perguntas").show(); //exibe o novo elemento(pergunta) no html

		$("#colocar-alternativa").click(cadastraAlternativa); //chama a função de cadastro de alternativas
		$("#btn-salva-pergunta").click(mostraTabelaPergunta); // chama a função mostraTabelaPergunta quando o botão salvar pergunta for clicado

		$("input[id=radioSubjetiva]").click(function(){
    		$("#colocar-alternativa").prop("disabled",true);
    	});

    	$("input[id=radioUnicaEscolha]").click(function(){
    		$("#colocar-alternativa").prop("disabled",false);
    	});

    	$("input[id=radioMultiplaEscolha]").click(function(){
    		$("#colocar-alternativa").prop("disabled",false);
    	});    	  	

    }
      
    //função que insere uma nova alternativa no html
    function cadastraAlternativa(){ 	 			
    	console.log("opaaa");
    	var $novaAlternativa =($('<br><div class="form-group" id="div-alternativa"/>'))
    	// $('<div id="div-alternativa" />')
    								.append($('<h4 />')
    											.text("Descrição da Alternativa: "))
    								.append($('<input id="descricaoAlternativa" type="text" class="form-control">'))
    								.append($('<button onclick="removeAlternativa()" type="button" id="btn-removeAlternativa" class="btn btn-default">Remover</button>'))
    								.append($('<btn-defaultton type="button" id="btn-salva-pergunta" class="btn btn-default disabled">Salvar Alternativa</button>'));

     	$novaAlternativa.appendTo("#div-perguntas").show(); //insere e exibe a alternativa
    }
 
 	//chama a função para cadastrar pergunta, após o botão cadastrar pergunta ser cliclado
	$("#btn-colocar-pergunta").click(cadastraPergunta);
	
});

function removeAlternativa(){ //remove todos os elementos da alternativa do HTML
	console.log("Sai daqui");
	$("#div-alternativa").remove();
}

function salvaPergunta(){	//Salva a pergunta e relacionaa com o questionário
	console.log("salvando pergunta");
}

function mostraTabelaPergunta(){
	console.log("mostrando tabela de perguntas");
}


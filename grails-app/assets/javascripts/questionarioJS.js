$(function(){
	
	function cadastraPergunta(){//função que insere os elementos para o cadastro de perguntas
		
		console.log("oi titia jay");//para saber se a função está sendo chamada

		var $novaPergunta = $('<div id="div-corpo"/>')
			.css("display","none")
            .addClass("jumbotron")
            .append($('<h4 />')
            			.text("Descrição: "))
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
            			.append($('<br><button type="button" id="colocar-alternativa" class="btn btn-primary" disabled>Cadastrar Alternativa</button>'));

    	$novaPergunta.appendTo("#div-perguntas").show(); //exibe o novo elemento(pergunta) no html


		$("#colocar-alternativa").click(cadastraAlternativa); //chama a função de cadastro de alternativas

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
       function removeAlternativa (){
   			console.log("Sai daqui");
   		}
    //função que insere uma nova alternativa no html
    function cadastraAlternativa(){ 	 			
    	console.log("opaaa");
    	var $novaAlternativa =($('<br><div class="form-group" id="div-alternativa"/>'))
    	// $('<div id="div-alternativa" />')
    								.append($('<h4 />')
    											.text("Descrição da Alternativa: "))
    								.append($('<input id="descricaoAlternativa" type="text" class="form-control">'))
    								.append($('<button type="button" id="btn-removeAlternativa" onclick="removeAlternativa()" class="btn btn-default">Remover</button>'));

     	$novaAlternativa.appendTo("#div-corpo").show();
     	 
     	$("#btn-removeAlternativa").click(removeAlternativa);
   	
   		}
 
 	//chama a função para cadastrar pergunta, após o botão cadastrar pergunta ser cliclado
	$("#colocar-pergunta").click(cadastraPergunta);
	
});

function removeAlternativa (){
	console.log("Sai daqui");
}


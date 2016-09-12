$(function(){

	function cadastraPergunta(){
		console.log("oi titia jay");
		var $novaPergunta = $("<div/>")
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
            			.attr("id", "div-radios")
            			.append($('<input type="radio" id="radioSubjetiva" name="tipoPergunta"> Subjetiva<br>'))
            			.append($('<input type="radio" id="radioUnicaEscolha" name="tipoPergunta"> Única Escolha<br>'))
						.append($('<input type="radio" id="radioMultiplaEscolha" name="tipoPergunta"> Múltipla Esscolha<br>')))
            			.append($('<br><button type="button" id="btn-alternativa" class="btn btn-primary" disabled>Cadastrar Alternativa</button>'));

    	$novaPergunta.appendTo("#div-perguntas").show();

		$("input[id=radioSubjetiva]").click(function(){
    		$("#btn-alternativa").prop("disabled",true);
    	});

    	$("input[id=radioUnicaEscolha]").click(function(){
    		$("#btn-alternativa").prop("disabled",false);
    	});

    	$("input[id=radioMultiplaEscolha]").click(function(){
    		$("#btn-alternativa").prop("disabled",false);
    	});

    	$("#btn-alternativa").click(cadastraAlternativa);
    	
    }

    function cadastraAlternativa(){ 	 			
    	console.log("opaaa");
    	
    	var $novaAlternativa = $("<div/>")
    		.append($('<br><div class="form-group"><label>Descrição da Alternativa:</label><input id="descricaoAlternativa" type="text" class="form-control"><span class="glyphicon glyphicon-remove" id="remove"></span></div>'));

    	$novaAlternativa.appendTo("#div-radios").show();

    	$("remove").click(removeAlternativa);
    }

    function removeAlternativa(){
    	$novaAlternativa.delete();
    }

	$("#colocar-pergunta").click(cadastraPergunta);
	
});



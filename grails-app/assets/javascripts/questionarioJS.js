$(function(){
	
	function cadastraPerguntaSub(){//função que insere os elementos para o cadastro de perguntas
		console.log("Subjetiva");//para saber se a função está sendo chamada
        var $novaPergunta = $("#div-perguntas")     
            .append($("<div />")
                .addClass("jumbotron")
                .addClass("form-group")
                .append($('<h5/>')
                    .text("Pergunta: "))
                .append($('<input />')
                    .attr("type","textarea")
                    .addClass("form-control")
                    .attr("rows", "5")
                    .attr("name", "descricaoPergunta")
                    .attr("placeholder","Escreva a pergunta aqui")));
        $novaPergunta.appendTo("#div-perguntas").show(); 
    }

    function cadastraPerguntaUnic(){
        console.log("UnicaEscolha");
        var $novaPergunta = $("#div-perguntas")     
            .append($("<div />")
                .addClass("jumbotron")
                .addClass("form-group")
                .append($('<h5/>')
                    .text("Pergunta: "))
                .append($('<input />')
                    .attr("type","textarea")
                    .addClass("form-control")
                    .attr("rows", "5")
                    .attr("name", "descricaoPergunta")
                    .attr("placeholder","Escreva a pergunta aqui"))
                .append($('<h5 />')
                    .text("Alternativas: "))
                .append($('<input />')
                    .attr("id","descricaoAlternativa")
                    .attr("placeholder","escreva a alternativa aqui")
                    .attr("type","text")
                    .addClass("form-control"))
                .append($('<span />')
                    .addClass("glyphicon glyphicon-remove")
                    .attr("aria-hidden","true")));                            
        $("#div-perguntas").css("display", "block"); //Torna a div da pergunta visível
        $novaPergunta.appendTo("#div-perguntas").show(); //exibe o novo elemento(pergunta) no html
    }

    function cadastraPerguntaMult(){
        console.log("Cadastro de pergunta MultiplaEscolha");
         var $novaPergunta = $("#div-perguntas")     
            .append($("<div />")
                .addClass("jumbotron")
                .addClass("form-group")
                .append($('<h5/>')
                    .text("Pergunta: "))
                .append($('<input />')
                    .attr("type","textarea")
                    .addClass("form-control")
                    .attr("rows", "5")
                    .attr("name", "descricaoPergunta")
                    .attr("placeholder","Escreva a pergunta aqui"))
                .append($('<h5 />')
                    .text("Alternativas: "))
                .append($('<input />')
                    .attr("id","descricaoAlternativa")
                    .attr("placeholder","escreva a alternativa aqui")
                    .attr("type","text")
                    .addClass("form-control"))
                .append($('<span />')
                    .addClass("glyphicon glyphicon-remove")
                    .attr("aria-hidden","true")));                            
        $("#div-perguntas").css("display", "block"); //Torna a div da pergunta visível
        $novaPergunta.appendTo("#div-perguntas").show();
    }
      
    //função que insere uma nova alternativa no html
    function cadastraAlternativa(){ 	 			
    	console.log("Cadastro Alternativa");
    	var $novaAlternativa =($('<br><div />')
            .addClass("form-group")
            .attr("id","div-alternativa"))
       	$novaAlternativa.appendTo("#div-perguntas").show(); //insere e exibe a alternativa
    }

 	//chama a função para cadastrar pergunta, após o botão cadastrar pergunta ser cliclado
	//$("#btn-colocar-pergunta").click(cadastraPergunta);
    $("#btnPerguntaSub").click(cadastraPerguntaSub);
    $("#btnPerguntaUnic").click(cadastraPerguntaUnic);
    $("#btnPerguntaMult").click(cadastraPerguntaMult);

});

function removeAlternativa(){ //remove todos os elementos da alternativa do HTML
	console.log("remove alternativa");
	$("#div-alternativa").remove();
}
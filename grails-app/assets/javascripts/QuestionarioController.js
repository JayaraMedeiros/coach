var contPergunta = 0;
var contAlternativa = 0;
var listaPerguntas = [];

function inserePerguntaSub(){
	console.log(" questao Subjetiva");
    var $novaPergunta = $("#div-perguntas")
            .append($("<div />") //div geral da questao
                .attr("id", contPergunta)
                .addClass("questao")

                .append($('<div />')
                    .addClass("pergunta")

                    .append($('<div />')
                        .addClass("form-group")
                         
                        .append($())
                        .append($('<a />') //botão de remover pergunta
                            .attr("id", "remove-pergunta"+contPergunta)
                            .attr("onclick","removePergunta("+contPergunta+")")
                            .addClass("btn btn-sm btn-default")
                            .append($('<span/>')
                                .addClass("glyphicon glyphicon-remove")
                                .attr("aria-hidden", "true")
                            )
                        )

                        .append('<br/>')) //espaço
                        .append($('<h4/>') //label Pergunta do tipo
                            .attr("id", "label-pergunta")
                            .text("Pergunta do tipo:")
                        )
                        .append($("<input disabled />") //input do tipo de pergunta
                            .attr("id", "input-tipo-pergunta")
                            .addClass("form-control")
                            .attr("type", "text")
                            .attr("name","tipoPergunta")
                            .attr("value", "Subjetiva")
                        )
                        .append($('<input />') // entrada para descrição da pergunta
                            .attr("type","textarea")
                            .addClass("form-control")
                            .attr("rows", "5")
                            .attr("name", "descricaoPergunta")
                            .attr("placeholder","Escreva a pergunta aqui")
                        )
                    )
                );
    $novaPergunta.appendTo("#div-perguntas").show();
}


function inserePerguntaUnic(){
    console.log("questao UnicaEscolha");
    var $novaPergunta = $("#div-perguntas")
            .append($("<div />") //div geral da questao
                .attr("id", contPergunta)
                .addClass("questao")

                .append($('<div />')
                    .addClass("pergunta")

                    .append($('<div />')
                        .addClass("form-group")
                         
                        .append($('<a />') //botão de remover pergunta
                            .attr("id", "remove-pergunta"+contPergunta)
                            .attr("onclick","removePergunta("+contPergunta+")")
                            .addClass("btn btn-sm btn-default")
                            .append($('<span/>')
                                .addClass("glyphicon glyphicon-remove")
                                .attr("aria-hidden", "true")
                            )
                        )

                        .append('<br/>')) //espaço
                        .append($('<h4/>') //label Pergunta do tipo
                            .attr("id", "label-pergunta")
                            .text("Pergunta do tipo:")
                        )
                        .append($("<input disabled />") //input do tipo de pergunta
                            .attr("id", "input-tipo-pergunta")
                            .addClass("form-control")
                            .attr("type", "text")
                            .attr("name","tipoPergunta")
                            .attr("value", "UnicaEscolha")
                        )
                        .append($('<input />') // entrada para descrição da pergunta
                            .attr("type","textarea")
                            .addClass("form-control")
                            .attr("rows", "5")
                            .attr("name", "descricaoPergunta")
                            .attr("placeholder","Escreva a pergunta aqui")
                        )

                        .append($('<br/><a />') //botão de inserir a alternativa
                            .attr("id", "btn-insere-alternativa"+contPergunta)
                            .attr("onclick","insereAlternativa("+contPergunta+")")
                            .addClass("btn btn-sm btn-default")
                            .text("Inserir alternativa ")
                            .append($('<span/>')
                                .addClass("glyphicon glyphicon-plus")
                                .attr("aria-hidden", "true")
                            )
                            .append($('<br/>'))
                        )
                    )
                );
}

function inserePerguntaMult(){
    console.log("questao UnicaEscolha");
    var $novaPergunta = $("#div-perguntas")
            .append($("<div />") //div geral da questao
                .attr("id", contPergunta)
                .addClass("questao")
                .append($('<div />')
                    .addClass("pergunta")
                    .append($('<div />')
                        .addClass("form-group")
                        .append($('<a />') //botão de remover pergunta
                            .attr("id", "remove-pergunta"+contPergunta)
                            .attr("onclick","removePergunta("+contPergunta+")")
                            .addClass("btn btn-sm btn-default")
                            .append($('<span/>')
                                .addClass("glyphicon glyphicon-remove")
                                .attr("aria-hidden", "true")
                            )
                        )
                        .append('<br/>')) //espaço
                        .append($('<h4/>') //label Pergunta do tipo
                            .attr("id", "label-pergunta")
                            .text("Pergunta do tipo:")
                        )
                        .append($("<input disabled />") //input do tipo de pergunta
                            .attr("id", "input-tipo-pergunta")
                            .addClass("form-control")
                            .attr("type", "text")
                            .attr("name","tipoPergunta")
                            .attr("value", "MultiplaEscolha")
                        )
                        .append($('<input />') // entrada para descrição da pergunta
                            .attr("type","textarea")
                            .addClass("form-control")
                            .attr("rows", "5")
                            .attr("name", "descricaoPergunta")
                            .attr("placeholder","Escreva a pergunta aqui")
                        )
                        .append($('<br/><a />') //botão de inserir a alternativa
                            .attr("id", "btn-insere-alternativa"+contPergunta)
                            .attr("onclick","insereAlternativa("+contPergunta+")")
                            .addClass("btn btn-sm btn-default")
                            .text("Inserir alternativa ")
                            .append($('<span/>')
                                .addClass("glyphicon glyphicon-plus")
                                .attr("aria-hidden", "true")
                            )
                            .append($('<br/>'))
                        )
                    )
                );
}

 
//função que insere uma nova alternativa no html
function insereAlternativa(numPergunta){ 
    console.log("insereAlternativa")
    contAlternativa++;
    console.log(contAlternativa)
    var divPergunta = $("#btn-insere-alternativa"+numPergunta).parent();
   
    var novaAlternativa = divPergunta.append($('<div />') //cria a div da alternativa
            .addClass("alternativa")
            .addClass("form-group")
            .attr("id", contAlternativa) //identifica a alternativa
            .append($('<h4/>')
                .text("Alternativa: "))
            .append($('<input />') //recebe a alternativa do usuario
                .attr("type", "text")
                .attr("placeholder","escreva uma alternativa aqui")
                .attr("name","descricaoAlternativa"+contPergunta))
            .append($('<a />') //insere um botão de remover alternativa
                .attr("id", "remove-alternativa"+contAlternativa)
                .attr("onclick","removeAlternativa("+contAlternativa+")")
                .addClass("btn btn-sm btn-default")
                .append($('<span/>')
                    .addClass("glyphicon glyphicon-remove")
                    .attr("aria-hidden", "true"))
                .append('<br/>'))
        )
}

//$(this).data('element');

//remove a pergunta da div geral de perguntas
function removePergunta(numPergunta){
  console.log(numPergunta)
   $("#remove-pergunta"+numPergunta).parent().parent().parent().remove();
}

//remove a alternativa 
function removeAlternativa(numAlternativa){
    console.log(numAlternativa)
    $("#remove-alternativa"+numAlternativa).parent().remove();
}

/*remove a alternativa da pergunta 
function removeAlternativa(e){
    console.log("remove alternativa");
    e.preventDefault();
    elemento = $(this).parent()
    $(elemento).remove(); 
	//$("#remove-alternativa"+numAlternativa).parent().remove();
}*/

//função para imprimir
function imprimir() {
    window.print();
}

//chama as funções de inserir pergunta de acordo com o tipo, após o botão cadastrar pergunta ser cliclado de acordo
    $("#btnPerguntaSub").click(function(){
        contPergunta++;
        console.log(contPergunta)
        inserePerguntaSub();
    });
    $("#btnPerguntaUnic").click(function(){
        contPergunta++;
        console.log(contPergunta);
        inserePerguntaUnic();
    });
    $("#btnPerguntaMult").click(function(){
        contPergunta++;
        console.log(contPergunta);
        inserePerguntaMult();
    });    

//remove a classe padrão do grails para inserir a personalizada
    $( "th" ).removeClass( "sortable" );
    $( "table" ).addClass( "table table-hover" );
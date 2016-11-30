class Pergunta{

	constructor(tipoPergunta, descricaoPergunta, alternativas){
		this.descricao = descricao;
		this.tipoPergunta = tipoPergunta;
		this.alternativas = alternativas;
	}
	
	get descricao(){
		return this.descricao
	}

	set descricao(desc){
		this.descricao = desc;
	}

	get tipoPergunta(){
		return this.tipoPergunta
	}

	set tipoPergunta(tipo){
		this.tipoPergunta = tipo;
	}
}
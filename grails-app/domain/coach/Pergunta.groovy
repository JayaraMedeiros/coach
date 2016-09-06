package coach

class Pergunta {

	String tipoPergunta
	String descricaoPergunta

	//static hasManyAlternativas = [alternativas:Alternativa]
	static hasMany = [respostas:Resposta, alternativas:Alternativa]
	
    static constraints = {
    	tipoPergunta inList: ["Subjetiva","UnicaEscolha","MultiplaEscolha"]
    }
}

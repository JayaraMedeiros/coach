package coach

class Pergunta {

	String tipoPergunta
	String descricaoPergunta

	static hasMany = [alternativas:Alternativa]
	static hasMany = [respostas:Resposta]
	
    static constraints = {
    	tipoPergunta inList: ["Subjetiva","UnicaEscolha","MultiplaEscolha"]
    }
}

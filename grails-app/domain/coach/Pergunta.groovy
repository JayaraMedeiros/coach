package coach

class Pergunta {

	String tipoPergunta
	String descricaoPergunta

	static hasMany = [respostas:Resposta, alternativas:Alternativa]
	
    static constraints = {
    	tipoPergunta inList: ["Subjetiva","UnicaEscolha","MultiplaEscolha"]
    	alternativas nullable:true
    	respostas nullable:true
    }
}

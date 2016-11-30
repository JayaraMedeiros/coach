package coach

class Alternativa {

	String descricaoAlternativa

	static belongsTo = [pergunta: Pergunta]
	
    static constraints = {
    }
}

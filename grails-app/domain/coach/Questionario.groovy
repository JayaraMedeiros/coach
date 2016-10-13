package coach

class Questionario {

	String tipo
	String nomeQuestionario

	static hasMany = [perguntas:Pergunta]
	
    static constraints = {
    	tipo inList: ["Anamnese","Outro"]
    }
}

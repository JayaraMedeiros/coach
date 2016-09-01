package coach

class Questionario {

	String tipo

	static hasMany = [perguntas:Pergunta]
	
    static constraints = {
    	tipo inList: ["Anamnese","Perimetria","Adposidade"]
    }
}

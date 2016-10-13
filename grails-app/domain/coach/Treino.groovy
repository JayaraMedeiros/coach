package coach

class Treino {

	String nomeTreino, classeTreino
	Date dataInicio, dataTermino
	static hasMany = [exercicios:Exercicio]

    static constraints = {
    	classeTreino inList:["Adaptação","Força","Flexibilidade","Resistencia","Funcional","Funcional com Carga"]
    }
}

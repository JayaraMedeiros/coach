package coach

class Treino {

	String nomeTreino, classeTreino
	Date dataInicio
	Date dataTermino
	static hasMany = [exercicios:Exercicio]

    static constraints = {
    	classeTreino inList:["Adaptação","Força","Flexibilidade","Resistencia","Funcional","Funcional com Carga"]
    }
}

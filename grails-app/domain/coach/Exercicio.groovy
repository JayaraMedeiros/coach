package coach

class Exercicio {

	int ordem, series, repeticoes, carga
	float intervalo
	String nomeExercicio, grupoMuscular

    static constraints = {
    	grupoMuscular inList: ["Pernas","Coxa","Abdomen","Panturrilha","Peitoral","Braços","Quadril","Ombros","Costas","Gluteos"]
    }
}

package coach

class Cliente {

	String nome, email
	int idade
	Date dataDeNascimento

	static hasMany = [avaliacoesPerimetricas:AvaliacaoPerimetrica]
	
    static constraints = {
    	
    }

}

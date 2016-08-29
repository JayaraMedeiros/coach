package coach

class Cliente {

	String nome, email, apelido, endereco, profissao
	String contato1, contato2, contatoparente
	int idade
	Date dataDeNascimento

	static hasMany = [avaliacoesPerimetricas:AvaliacaoPerimetrica]
	
    static constraints = {
    	
    }

}

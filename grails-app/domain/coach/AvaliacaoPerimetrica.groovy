package coach

class AvaliacaoPerimetrica {

	Date data
	float altura,peso,imc,torax,ombros,cintura,abdomen,quadril
	float anteantebracoE,antebracoD,bracoRelaxE,bracoRelaxD
	float coxaE,coxaD,coxaDistalE,coxaDistalD,gastrocnemiosE,gastrocnemiosD
	String analise

	static belongsTo = [cliente:Cliente]
	
    static constraints = {
    }
}

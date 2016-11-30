package coach

class Avaliacao {

	Date dataAvaliacao
	float altura, peso	
	float torax, ombros, antebracoDir, antebracoEsq
	float bracoDir, bracoEsq, bracoDirCon, bracoEsqCon
	float cintura, abdomen, quadril
	float coxaDir, coxaEsq, coxaDirDis, coxaEsqDis
	float panturrilhaDir, panturrilhaEsq

	String nomeAvaliacao, observacao	

	static BelongTo = [Cliente cliente]

    static constraints = {
    }
}

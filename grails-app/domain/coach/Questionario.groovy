package coach

class Questionario {

	String tipo


    static constraints = {
    	tipo inList: ["Anamnese","Perimetria","Adposidade"]
    }
}

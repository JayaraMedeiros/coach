package coach
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class QuestionarioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Questionario.list(params), model:[questionarioCount: Questionario.count()]
    }

    def show(Questionario questionario) {
        respond questionario
    }

    def criar(Questionario questionario){
        respond new Questionario(params)
    }

    def create() {
        respond new Questionario(params)
    }

    def salvaPergunta(Pergunta pergunta){
        pergunta = new Pergunta(params.tipoPergunta,params.descricaoPergunta)
        pergunta.save()
    }

    @Transactional
    def save(Questionario questionario){
        render params

        /*for(p in perguntas) {
           salvaPergunta() 
        }*/

        //Exemplo ----- questionario = new Questionario()
        //questionario.addToperguntas(new Pergunta(p))

        
    }

    def edit(Questionario questionario) {
        respond questionario
    }

    @Transactional
    def update(Questionario questionario) {
        if (questionario == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (questionario.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond questionario.errors, view:'edit'
            return
        }

        questionario.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'questionario.label', default: 'Questionario'), questionario.id])
                redirect questionario
            }
            '*'{ respond questionario, [status: OK] }
        }
    }

    @Transactional
    def delete(Questionario questionario) {

        if (questionario == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        questionario.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'questionario.label', default: 'Questionario'), questionario.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'questionario.label', default: 'Questionario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

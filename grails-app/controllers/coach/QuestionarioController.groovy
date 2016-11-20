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

    def create() {
        respond new Questionario(params)
    }

    def salvaAlternativa(Alternativa alternativa){
        alternativa = new Alternativa()
        alternativa.descricaoAlternativa = params.descricaoAlternativa
        alternativa.save()
    }

    def salvaPergunta(Pergunta pergunta){
        pergunta = New Pergunta()
        pergunta.tipoPergunta = params.tipoPergunta
        pergunta.descricaoPergunta = params.descricaoPergunta
    }

   
    @Transactional
    def save(Questionario questionario) {
    render params
       questionario = new Questionario()
       questionario.tipo = params.tipo
       questionario.nomeQuestionario = params.nomeQuestionario
       questionario.perguntas = params.perguntas
       questionario.save()

        if(questionario.hasErrors()){
            render questionario.errors
        }else{
           //redirect(action:"show",params:[id:questionario.id])
        }

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

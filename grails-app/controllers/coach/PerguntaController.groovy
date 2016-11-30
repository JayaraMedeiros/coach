package coach

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PerguntaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Pergunta.list(params), model:[perguntaCount: Pergunta.count()]
    }

    def show(Pergunta pergunta) {
        respond pergunta
    }

    def create() {
        respond new Pergunta(params)
    }

    @Transactional
    def save(Pergunta pergunta) {
        pergunta = new Pergunta()
        pergunta.tipoPergunta = params.tipoPergunta
        pergunta.descricaoPergunta = params.descricaoPergunta
        pergunta.save()

         if(pergunta.hasErrors()){
            render pergunta.errors
        }else{
            redirect(action:"show",params:[id:cliente.id])
        }
    }

    def edit(Pergunta pergunta) {
        respond pergunta
    }

    @Transactional
    def update(Pergunta pergunta) {
        if (pergunta == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (pergunta.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond pergunta.errors, view:'edit'
            return
        }

        pergunta.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'pergunta.label', default: 'Pergunta'), pergunta.id])
                redirect pergunta
            }
            '*'{ respond pergunta, [status: OK] }
        }
    }

    @Transactional
    def delete(Pergunta pergunta) {

        if (pergunta == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        pergunta.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'pergunta.label', default: 'Pergunta'), pergunta.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pergunta.label', default: 'Pergunta'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

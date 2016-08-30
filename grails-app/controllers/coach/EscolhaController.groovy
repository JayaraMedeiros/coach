package coach

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EscolhaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Escolha.list(params), model:[escolhaCount: Escolha.count()]
    }

    def show(Escolha escolha) {
        respond escolha
    }

    def create() {
        respond new Escolha(params)
    }

    @Transactional
    def save(Escolha escolha) {
        if (escolha == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (escolha.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond escolha.errors, view:'create'
            return
        }

        escolha.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'escolha.label', default: 'Escolha'), escolha.id])
                redirect escolha
            }
            '*' { respond escolha, [status: CREATED] }
        }
    }

    def edit(Escolha escolha) {
        respond escolha
    }

    @Transactional
    def update(Escolha escolha) {
        if (escolha == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (escolha.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond escolha.errors, view:'edit'
            return
        }

        escolha.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'escolha.label', default: 'Escolha'), escolha.id])
                redirect escolha
            }
            '*'{ respond escolha, [status: OK] }
        }
    }

    @Transactional
    def delete(Escolha escolha) {

        if (escolha == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        escolha.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'escolha.label', default: 'Escolha'), escolha.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'escolha.label', default: 'Escolha'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

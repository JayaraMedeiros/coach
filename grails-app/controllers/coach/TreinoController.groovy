package coach

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TreinoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Treino.list(params), model:[treinoCount: Treino.count()]
    }

    def show(Treino treino) {
        respond treino
    }

    def create() {
        respond new Treino(params)
    }

    @Transactional
    def save(Treino treino) {
        if (treino == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (treino.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond treino.errors, view:'create'
            return
        }

        treino.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'treino.label', default: 'Treino'), treino.id])
                redirect treino
            }
            '*' { respond treino, [status: CREATED] }
        }
    }

    def edit(Treino treino) {
        respond treino
    }

    @Transactional
    def update(Treino treino) {
        if (treino == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (treino.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond treino.errors, view:'edit'
            return
        }

        treino.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'treino.label', default: 'Treino'), treino.id])
                redirect treino
            }
            '*'{ respond treino, [status: OK] }
        }
    }

    @Transactional
    def delete(Treino treino) {

        if (treino == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        treino.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'treino.label', default: 'Treino'), treino.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'treino.label', default: 'Treino'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

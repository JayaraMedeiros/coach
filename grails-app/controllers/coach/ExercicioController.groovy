package coach

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ExercicioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Exercicio.list(params), model:[exercicioCount: Exercicio.count()]
    }

    def show(Exercicio exercicio) {
        respond exercicio
    }

    def create() {
        respond new Exercicio(params)
    }

    @Transactional
    def save(Exercicio exercicio) {
        if (exercicio == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (exercicio.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond exercicio.errors, view:'create'
            return
        }

        exercicio.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'exercicio.label', default: 'Exercicio'), exercicio.id])
                redirect exercicio
            }
            '*' { respond exercicio, [status: CREATED] }
        }
    }

    def edit(Exercicio exercicio) {
        respond exercicio
    }

    @Transactional
    def update(Exercicio exercicio) {
        if (exercicio == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (exercicio.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond exercicio.errors, view:'edit'
            return
        }

        exercicio.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'exercicio.label', default: 'Exercicio'), exercicio.id])
                redirect exercicio
            }
            '*'{ respond exercicio, [status: OK] }
        }
    }

    @Transactional
    def delete(Exercicio exercicio) {

        if (exercicio == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        exercicio.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'exercicio.label', default: 'Exercicio'), exercicio.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'exercicio.label', default: 'Exercicio'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

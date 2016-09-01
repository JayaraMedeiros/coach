package coach

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AlternativaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Alternativa.list(params), model:[alternativaCount: Alternativa.count()]
    }

    def show(Alternativa alternativa) {
        respond alternativa
    }

    def create() {
        respond new Alternativa(params)
    }

    @Transactional
    def save(Alternativa alternativa) {
        if (alternativa == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (alternativa.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond alternativa.errors, view:'create'
            return
        }

        alternativa.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'alternativa.label', default: 'Alternativa'), alternativa.id])
                redirect alternativa
            }
            '*' { respond alternativa, [status: CREATED] }
        }
    }

    def edit(Alternativa alternativa) {
        respond alternativa
    }

    @Transactional
    def update(Alternativa alternativa) {
        if (alternativa == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (alternativa.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond alternativa.errors, view:'edit'
            return
        }

        alternativa.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'alternativa.label', default: 'Alternativa'), alternativa.id])
                redirect alternativa
            }
            '*'{ respond alternativa, [status: OK] }
        }
    }

    @Transactional
    def delete(Alternativa alternativa) {

        if (alternativa == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        alternativa.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'alternativa.label', default: 'Alternativa'), alternativa.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'alternativa.label', default: 'Alternativa'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

package coach

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AvaliacaoPerimetricaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AvaliacaoPerimetrica.list(params), model:[avaliacaoPerimetricaCount: AvaliacaoPerimetrica.count()]
    }

    def show(AvaliacaoPerimetrica avaliacaoPerimetrica) {
        respond avaliacaoPerimetrica
    }

    def create() {
        respond new AvaliacaoPerimetrica(params)
    }

    @Transactional
    def save(AvaliacaoPerimetrica avaliacaoPerimetrica) {
        if (avaliacaoPerimetrica == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (avaliacaoPerimetrica.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond avaliacaoPerimetrica.errors, view:'create'
            return
        }

        avaliacaoPerimetrica.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'avaliacaoPerimetrica.label', default: 'AvaliacaoPerimetrica'), avaliacaoPerimetrica.id])
                redirect avaliacaoPerimetrica
            }
            '*' { respond avaliacaoPerimetrica, [status: CREATED] }
        }
    }

    def edit(AvaliacaoPerimetrica avaliacaoPerimetrica) {
        respond avaliacaoPerimetrica
    }

    @Transactional
    def update(AvaliacaoPerimetrica avaliacaoPerimetrica) {
        if (avaliacaoPerimetrica == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (avaliacaoPerimetrica.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond avaliacaoPerimetrica.errors, view:'edit'
            return
        }

        avaliacaoPerimetrica.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'avaliacaoPerimetrica.label', default: 'AvaliacaoPerimetrica'), avaliacaoPerimetrica.id])
                redirect avaliacaoPerimetrica
            }
            '*'{ respond avaliacaoPerimetrica, [status: OK] }
        }
    }

    @Transactional
    def delete(AvaliacaoPerimetrica avaliacaoPerimetrica) {

        if (avaliacaoPerimetrica == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        avaliacaoPerimetrica.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'avaliacaoPerimetrica.label', default: 'AvaliacaoPerimetrica'), avaliacaoPerimetrica.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'avaliacaoPerimetrica.label', default: 'AvaliacaoPerimetrica'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

package coach

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import java.text.SimpleDateFormat

@Transactional(readOnly = true)
class ClienteController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Cliente.list(params), model:[clienteCount: Cliente.count()]
    }

    def show() {
        respond Cliente.get(params.id) 
    }

    def create() {
        respond new Cliente(nome:"jay")
    }

    @Transactional
    def save(Cliente cliente) {
        cliente = new Cliente()
        cliente.nome =  params.nome
        cliente.idade = Integer.parseInt(params.idade)
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-dd-MM")
        cliente.dataDeNascimento = sdf.parse(params.dataDeNascimento)
        println cliente.dataDeNascimento
        cliente.email = params.email
        cliente.apelido = params.apelido
        cliente.profissao = params.profissao
        cliente.endereco = params.endereco
        cliente.contato1 = params.contato1
        cliente.contato2 = params.contato2
        cliente.contatoparente = params.contatoparente
        cliente.save()

        if(cliente.hasErrors()){
            render cliente.errors
        }else{
            redirect(action:"show",params:[id:cliente.id])
        }
    }

    def edit(Cliente cliente) {
        respond cliente
    }

    @Transactional
    def update(Cliente cliente) {
        if (cliente == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (cliente.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond cliente.errors, view:'edit'
            return
        }

        cliente.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'cliente.label', default: 'Cliente'), cliente.id])
                redirect cliente
            }
            '*'{ respond cliente, [status: OK] }
        }
    }

    @Transactional
    def delete(Cliente cliente) {

        if (cliente == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        cliente.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'cliente.label', default: 'Cliente'), cliente.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cliente.label', default: 'Cliente'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}

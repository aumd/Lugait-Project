package lugait

import org.springframework.dao.DataIntegrityViolationException

class PurokController{

	def beforeInterceptor = [action:this.&auth,except:[]]

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [purokInstanceList: Purok.list(params), purokInstanceTotal: Purok.count()]
    }

    def create() {
        [purokInstance: new Purok(params)]
    }

    def save() {
        def purokInstance = new Purok(params)
        if (!purokInstance.save(flush: true)) {
            render(view: "create", model: [purokInstance: purokInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'purok.label', default: 'Purok'), purokInstance.id])
        redirect(action: "show", id: purokInstance.id)
    }

    def show(Long id) {
        def purokInstance = Purok.get(id)
        if (!purokInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purok.label', default: 'Purok'), id])
            redirect(action: "list")
            return
        }

        [purokInstance: purokInstance]
    }

    def edit(Long id) {
        def purokInstance = Purok.get(id)
        if (!purokInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purok.label', default: 'Purok'), id])
            redirect(action: "list")
            return
        }

        [purokInstance: purokInstance]
    }

    def update(Long id, Long version) {
        def purokInstance = Purok.get(id)
        if (!purokInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purok.label', default: 'Purok'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (purokInstance.version > version) {
                purokInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'purok.label', default: 'Purok')] as Object[],
                          "Another user has updated this Purok while you were editing")
                render(view: "edit", model: [purokInstance: purokInstance])
                return
            }
        }

        purokInstance.properties = params

        if (!purokInstance.save(flush: true)) {
            render(view: "edit", model: [purokInstance: purokInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'purok.label', default: 'Purok'), purokInstance.id])
        redirect(action: "show", id: purokInstance.id)
    }

    def delete(Long id) {
        def purokInstance = Purok.get(id)
        if (!purokInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'purok.label', default: 'Purok'), id])
            redirect(action: "list")
            return
        }

        try {
            purokInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'purok.label', default: 'Purok'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'purok.label', default: 'Purok'), id])
            redirect(action: "show", id: id)
        }
    }
}

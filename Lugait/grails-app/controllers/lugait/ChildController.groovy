package lugait

import org.springframework.dao.DataIntegrityViolationException

class ChildController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [childInstanceList: Child.list(params), childInstanceTotal: Child.count()]
    }

    def create() {
        [childInstance: new Child(params)]
    }

    def save() {
        def childInstance = new Child(params)
        if (!childInstance.save(flush: true)) {
            render(view: "create", model: [childInstance: childInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'child.label', default: 'Child'), childInstance.id])
        redirect(action: "show", id: childInstance.id)
    }

    def show(Long id) {
        def childInstance = Child.get(id)
        if (!childInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'child.label', default: 'Child'), id])
            redirect(action: "list")
            return
        }

        [childInstance: childInstance]
    }

    def edit(Long id) {
        def childInstance = Child.get(id)
        if (!childInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'child.label', default: 'Child'), id])
            redirect(action: "list")
            return
        }

        [childInstance: childInstance]
    }

    def update(Long id, Long version) {
        def childInstance = Child.get(id)
        if (!childInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'child.label', default: 'Child'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (childInstance.version > version) {
                childInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'child.label', default: 'Child')] as Object[],
                          "Another user has updated this Child while you were editing")
                render(view: "edit", model: [childInstance: childInstance])
                return
            }
        }

        childInstance.properties = params

        if (!childInstance.save(flush: true)) {
            render(view: "edit", model: [childInstance: childInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'child.label', default: 'Child'), childInstance.id])
        redirect(action: "show", id: childInstance.id)
    }

    def delete(Long id) {
        def childInstance = Child.get(id)
        if (!childInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'child.label', default: 'Child'), id])
            redirect(action: "list")
            return
        }

        try {
            childInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'child.label', default: 'Child'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'child.label', default: 'Child'), id])
            redirect(action: "show", id: id)
        }
    }
}

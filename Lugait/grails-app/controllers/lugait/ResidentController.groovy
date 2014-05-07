package lugait

import org.springframework.dao.DataIntegrityViolationException
import groovy.sql.Sql
import groovy.sql.GroovyRowResult

class ResidentController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        //redirect(action: "list", params: params)
		render(view:"mainpage")
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [residentInstanceList: Resident.list(params), residentInstanceTotal: Resident.count()]
    }

    def create() {
        [residentInstance: new Resident(params)]
    }

    def save() {
        def residentInstance = new Resident(params)
        if (!residentInstance.save(flush: true)) {
            render(view: "create", model: [residentInstance: residentInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'resident.label', default: 'Resident'), residentInstance.id])
        redirect(action: "show", id: residentInstance.id)
    }

    def show(Long id) {
        def residentInstance = Resident.get(id)
        if (!residentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'resident.label', default: 'Resident'), id])
            redirect(action: "list")
            return
        }

        [residentInstance: residentInstance]
    }

    def edit(Long id) {
        def residentInstance = Resident.get(id)
        if (!residentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'resident.label', default: 'Resident'), id])
            redirect(action: "list")
            return
        }

        [residentInstance: residentInstance]
    }

    def update(Long id, Long version) {
        def residentInstance = Resident.get(id)
        if (!residentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'resident.label', default: 'Resident'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (residentInstance.version > version) {
                residentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'resident.label', default: 'Resident')] as Object[],
                          "Another user has updated this Resident while you were editing")
                render(view: "edit", model: [residentInstance: residentInstance])
                return
            }
        }

        residentInstance.properties = params

        if (!residentInstance.save(flush: true)) {
            render(view: "edit", model: [residentInstance: residentInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'resident.label', default: 'Resident'), residentInstance.id])
        redirect(action: "show", id: residentInstance.id)
    }

    def delete(Long id) {
        def residentInstance = Resident.get(id)
        if (!residentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'resident.label', default: 'Resident'), id])
            redirect(action: "list")
            return
        }

        try {
            residentInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'resident.label', default: 'Resident'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'resident.label', default: 'Resident'), id])
            redirect(action: "show", id: id)
        }
    }
	
	def searchableService
	def searchResident(){
		def residentNumber = params.residentNumber

		if(residentNumber){
			def srchResults = searchableService.search(residentNumber)
			def results = srchResults.results
			if(results)
			render(view: "list", model: [residentInstanceList: results, residentInstanceTotal: results.size()])	
			else{
				flash.message = message(code: 'Resident not found')
				redirect(action:"list")
			}
		}else{
				flash.message = message(code: '')
				redirect(action:"list")
			}
	}
	
	def dataSource
	def searchAboveTeen() { 
		def db = new Sql(dataSource);
		def requests = db.rows("Select * from resident where age between 19 and 120")
		render(view:"searchAboveTeen", model:[requests:requests])
	}
	
	def calculateAge(Long id) {
		def db = new Sql(dataSource)
    	//def result = db.rows("""select count (age) from resident""")
		//int counter = result.get(0).count
		//def residentInstance = Resident.get(id)
		def all = db.rows("""select * from resident where id='${id}'""")
		//def birthDate = db.rows("""select birth_date from resident where id=${id}""")
		//def birthYear = db.rows("""select birth_year from resident where id=${id}""")
		def info = all.get(0)
		def birthMonth = info.birth_month
		def birthDate = info.birth_date
		def birthYear = info.birth_year
		
		def today= new GregorianCalendar()
		def dob= new GregorianCalendar()
		dob.set(Calendar.ERA, GregorianCalendar.AD)
		dob.set(Calendar.YEAR, birthYear)
		dob.set(Calendar.MONTH, birthMonth) //0 is January and 3 is April
		dob.set(Calendar.DATE, birthDate)
		 
		def userMonth0=dob.get(Calendar.MONTH)
		def userMonth1=userMonth0-1
		def userDay=dob.get(Calendar.DATE)
		def todayMonth0=today.get(Calendar.MONTH)
		def todayMonth1=todayMonth0
		def todayDay=today.get(Calendar.DATE)
		 
		if (todayMonth1 > userMonth1){
			def res = today.get(Calendar.YEAR)-dob.get(Calendar.YEAR)
			db.execute("""update resident set age='${res}' where id='${id}' """)
			def residentInstance = Resident.get(id)
			flash.message = message(code: 'default.updated.message', args: [message(code: 'resident.label', default: 'Resident'), residentInstance.id])
			redirect(action: "show", id: residentInstance.id)
		}else if(todayMonth1 == userMonth1 && todayDay >= userDay){
			def res = today.get(Calendar.YEAR)-dob.get(Calendar.YEAR)
			db.execute("""update resident set age='${res}' where id='${id}' """)
			def residentInstance = Resident.get(id)
			flash.message = message(code: 'default.updated.message', args: [message(code: 'resident.label', default: 'Resident'), residentInstance.id])
			redirect(action: "show", id: residentInstance.id)
		}else{
			def res = today.get(Calendar.YEAR)-dob.get(Calendar.YEAR)-1
			db.execute("""update resident set age='${res}' where id='${id}' """)
			def residentInstance = Resident.get(id)
			flash.message = message(code: 'default.updated.message', args: [message(code: 'resident.label', default: 'Resident'), residentInstance.id])
			redirect(action: "show", id: residentInstance.id)
		}
	}
	
	def updateAllAge() {
		def db = new Sql(dataSource)
    	def result = db.rows("""select count (age) from resident""")
		int counter = result.get(0).count
		for(int init=0; counter > init; counter--) {
			def all = db.rows("""select * from resident where id='${counter}'""")
			def info = all.get(0)
			def birthMonth = info.birth_month
			def birthDate = info.birth_date
			def birthYear = info.birth_year
			
			def today= new GregorianCalendar()
			def dob= new GregorianCalendar()
			dob.set(Calendar.ERA, GregorianCalendar.AD)
			dob.set(Calendar.YEAR, birthYear)
			dob.set(Calendar.MONTH, birthMonth) //0 is January and 3 is April
			dob.set(Calendar.DATE, birthDate)
			 
			def userMonth0=dob.get(Calendar.MONTH)
			def userMonth1=userMonth0-1
			def userDay=dob.get(Calendar.DATE)
			def todayMonth0=today.get(Calendar.MONTH)
			def todayMonth1=todayMonth0
			def todayDay=today.get(Calendar.DATE)
			 
			if (todayMonth1 > userMonth1){
				def res = today.get(Calendar.YEAR)-dob.get(Calendar.YEAR)
				db.execute("""update resident set age='${res}' where id='${counter}' """)
			}else if(todayMonth1 == userMonth1 && todayDay >= userDay){
				def res = today.get(Calendar.YEAR)-dob.get(Calendar.YEAR)
				db.execute("""update resident set age='${res}' where id='${counter}' """)
			}else{
				def res = today.get(Calendar.YEAR)-dob.get(Calendar.YEAR)-1
				db.execute("""update resident set age='${res}' where id='${counter}' """)
			}
		}
		redirect(action: "list")
	}

}

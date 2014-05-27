package lugait

import org.springframework.dao.DataIntegrityViolationException
import groovy.sql.Sql

class UserController {

	def searchableService
	def dataSource
	def sessionFactory

	def index = {
		render(view:"index")
	}

	def login = {
		def paramheader = params.header
    	def paramdata = params.data

		def db = new Sql(dataSource)
    	def accountHeader = db.rows("select header from account")
		def accountData = db.rows("select data from account")
    	def result = db.rows("""select count (*) from account where header='${paramheader}' and data='${paramdata}'""")
    	int counter = result.get(0).count

		if(counter == 1){
    		//flash.message = "Login succeed. Login as admin."
    		session.user = "admin"
			redirect(uri: "/Resident")
    	}else{
    		//flash.message = "login failed"
			//render(view:"/_errors/404",model:[message:"Wrong combination. Try Again"])
			//<g:render template="404" model="[message:"Wrong combination. Try Again"]" />
    		//render("login failed")
    	}
   	}
   
	def logout = {
    	session.user = null
    	redirect(action:'index')
    }
}
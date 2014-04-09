package lugait
import groovy.sql.Sql
import groovy.sql.GroovyRowResult

class ReportController {
	def dataSource

    def index(Long id) { 
	 redirect(action: "showReport", id: id)
	 }
	 
	def showReport(Long id){
		def residentInstance = Resident.get(id)
		[residentInstance: residentInstance]
	}
	def printReport(){
		def residentInstance = Resident.get(params.residentId)
		
		def db = new Sql(dataSource) 
		def result = db.rows("SELECT resident.precinct_number, resident.resident_number, resident.resident_child_name, resident.resident_name, resident.birth_date, resident.address, resident.educational_attainment, resident.employment_status, resident.household_role, resident.monthly_income, resident.med_history, resident.environmental_sanitation, resident.means_of_drinking_water, resident.means_of_living, resident.disabilities,resident.status, resident.religion, resident.resident_spouse_name  FROM resident where resident.id = '${residentInstance.id}' order by resident.id")
		chain(controller:'jasper',action:'index',model:[data:result],params:params)
	}
	
}

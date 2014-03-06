package lugait

class Resident {

	String residentNumber
	String householdRole
	String residentFirstName
	String residentMiddleName
	String residentLastName
	Date birthDate
	String address
	String religion
	String precinctNumber
	
	String status
	String residentSpouseFirstName
	String residentSpouseMiddleName
	String residentSpouseLastName
	String child
	
	String educationalAttainment
	String monthlyIncome
	String meansOfLiving
	String employmentStatus
	
	String environmentalSanitation
	String meansOfDrinkingWater
	
	String disabilities
	String medHistory
	
	//static hasMany = [child: Child]
	
    static constraints = {
		
		residentFirstName(blank:false)
		residentMiddleName(blank:false)
		residentLastName(blank:false)
		residentNumber(blank:false, unique:true)
		householdRole(blank:false, inList: ["Family Head", "Family Member"])
		birthDate(blank:false)
		address(blank:false)
		religion(blank:false, inList: ["Roman Catholic", "SDA", "Protestant", "Baptist", "Iglesia ni Cristo", "Jehovah's Witness", ""])
		precinctNumber(blank:false)
		
		status(blank:false, inList: ["Single", "Married", "Widowed", "Lived-in"])
		residentSpouseFirstName()
		residentSpouseMiddleName()
		residentSpouseLastName()
		child()
		
		educationalAttainment(blank:false, inList: ["Elementary Level","Elementary Graduate","Highschool Level","Highschool Graduate","College Level","College Graduate","None"])
		meansOfLiving(blank:false, inList: ["Makeshift Houses or Barong-barong", "Bamboo House or Nipa", "Wooden House", "Concrete or Semi-concrete House"])
		employmentStatus(blank:false, inList: ["Employed in Gov't or Private Agencies", "Farming","Fishing", "Self Employed/Business", "Overseas Contract Worker", "Professional(Practicing", "Hired Labor"])
		monthlyIncome(blank:false, inList: ["Below 4000", "4,001 to 6,000", "6,001 to 8,000", "8,001 to 10,000", "10,001 and above"])
		
		environmentalSanitation(blank:false, inList: ["Sanitary Toilet", "Unsanitary Toilet", "Communal Toilet", "No Toilet", "Others"])
		meansOfDrinkingWater(blank:false, inList: ["Open Shallow Dug Well", "Spring", "Deep Well", "Pipe Water Work Supply", "Bottled Water"])
		
		disabilities(blank:false, inList: ["None","Paralized","Blind","Deaf","Amputee","Mentally Retarded"])
		medHistory(blank:false)
    }
	
	static searchable = true
	
	String toString(){
	"${this.residentNumber} ${residentFirstName} ${residentMiddleName} ${residentLastName}"
	}
}
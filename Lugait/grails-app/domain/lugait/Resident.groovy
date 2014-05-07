package lugait

class Resident {

	String purok
	String residentNumber
	String householdRole
	String residentName
	Integer birthMonth
	Integer birthDate
	Integer birthYear
	String address
	String religion
	String precinctNumber
	Integer age
	
	String status
	String residentSpouseName
	String residentChildName
	
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
		
		purok(blank:false, inList: ["Purok Andres Bonifacio", "Purok Mabini", "Purok Macao", "Purok Masilakon 1", "Purok Masilakon 2", "Purok Mauswagon", "Purok Rizal", "Purok Salimbal"])
		residentName(blank:false)
		residentNumber(blank:false, unique:true)
		householdRole(blank:false, inList: ["Family Head", "Family Member", "Others"])
		birthMonth(blank:false)
		birthDate(blank:false)
		birthYear(blank:false)
		address(blank:false)
		religion(blank:false, inList: ["Roman Catholic", "SDA", "Protestant", "Baptist", "Iglesia ni Cristo", "Jehovah's Witness", "Others"])
		precinctNumber(blank:false)
		age(blank:false)
		
		status(blank:false, inList: ["Single", "Married", "Widowed", "Lived-in", "Dependent", "Others"])
		residentSpouseName()
		residentChildName()
		
		educationalAttainment(blank:false, inList: ["Elementary Level","Elementary Graduate","Highschool Level","Highschool Graduate","College Level","College Graduate","None", "Others"])
		meansOfLiving(blank:false, inList: ["Makeshift Houses or Barong-barong", "Bamboo House or Nipa", "Wooden House", "Concrete or Semi-concrete House", "Others"])
		employmentStatus(blank:false, inList: ["Employed in Gov't Agencies","Employed in Private Agencies", "Farming","Fishing", "Self Employed/Business", "Overseas Contract Worker", "Professional", "Hired Labor", "Others"])
		monthlyIncome(blank:false, inList: ["Below 4000", "4,001 to 6,000", "6,001 to 8,000", "8,001 to 10,000", "10,001 and above"])
		
		environmentalSanitation(blank:false, inList: ["Sanitary Toilet", "Unsanitary Toilet", "Communal Toilet", "No Toilet", "Others"])
		meansOfDrinkingWater(blank:false, inList: ["Bottled Water", "Open Shallow Dug Well/Deep Well", "Pipe Water Work Supply", "Spring", "Others"])
		
		disabilities(blank:false, inList: ["None","Paralized","Blind","Deaf","Amputee","Mentally Retarded", "Others"])
		medHistory(blank:false)
    }
	
	static searchable = true
	
	String toString(){
	"${this.residentNumber} ${residentName}"
	"${this.purok} ${residentName}"
	"${this.age} ${residentName}"
	}
}
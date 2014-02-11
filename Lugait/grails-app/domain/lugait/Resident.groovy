package lugait

class Resident {

	String residentNumber
	String householdRole
	String residentName
	Date birthDate
	String address
	String religion
	
	String status
	String spouse
	String children
	
	String meansOfLiving
	String employmentStatus
	String monthlyIncome
	
	String environmentalSanitation
	String meansOfDrinkingWater
	
	String disabilities
	String medHistory
	
    static constraints = {
	
		residentNumber(blank:false, unique:true)
		householdRole(blank:false, inList: ["Family Head", "Family Member"])
		residentName(blank:false, unique:true)
		birthDate(blank:false)
		address(blank:false)
		religion(blank:false, inList: ["Roman Catholic", "SDA", "Iglesia ni Cristo", "Jehovah's Witness"])
		
		status(blank:false, inList: ["Single", "Married", "Widowed", "Lived-in"])
		spouse(unique:true)
		children(unique:true)
		
		meansOfLiving(blank:false, inList: ["Makeshift Houses or Barong-barong", "Bamboo House or Nipa", "Wooden House", "Concrete or Semi-concrete House"])
		employmentStatus(blank:false, inList: ["Employed in Gov't or Private Agencies", "Farming","Fishing", "Self Employed/Business", "Overseas Contract Worker", "Professional(Practicing", "Hired Labor"])
		monthlyIncome(blank:false, inList: ["Below 4000", "4,001 to 6,000", "6,001 to 8,000", "8,001 to 10,000", "10,001 and above"])
		
		environmentalSanitation(blank:false, inList: ["Sanitary Toilet", "Unsanitary Toilet", "Communal Toilet", "No Toilet", "Others"])
		meansOfDrinkingWater(blank:false, inList: ["Open Shallow Dug Well", "Spring", "Deep Well", "Pipe Water Work Supply", "Bottled Water"])
		
		disabilities(blank:false)
		medHistory(blank:false)
    }
}

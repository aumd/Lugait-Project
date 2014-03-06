package lugait

class Child {

	String childFirstName
	String childMiddleName
	String childLastName
	String childGender
	Date birthDate
	
	//static belongsTo = [resident: Resident]
	
	static constraints = {
		childFirstName(blank:false)
		childMiddleName(blank:false)
		childLastName(blank:false)
		childGender(blank:false, inList: ["Male","Female"])
		birthDate(blank:false)
	}
	
	String toString(){
	"${childFirstName} ${childMiddleName} ${childLastName}"
	}

}
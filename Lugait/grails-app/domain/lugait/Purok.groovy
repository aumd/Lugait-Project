package lugait

class Purok {
	String purok
	
	
	static constraints = {
		purok(blank:false)
		
    }
	
static searchable = true
	
	String toString(){
	"${this.purok}"
	}
}
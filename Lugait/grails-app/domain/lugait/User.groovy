package lugait

class User {

	String header
    String data 

    static constraints = {
		header(unique:true, blank:false) 
        data(blank:false) 
    }
}

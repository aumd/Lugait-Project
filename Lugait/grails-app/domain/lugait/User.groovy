package lugait

class User {

	String username
    String password 

    static constraints = {
		username(unique:true, blank:false) 
        password(blank:false) 
    }
}

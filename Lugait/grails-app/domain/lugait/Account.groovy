package lugait

class Account {
	String header;
	String data;
	String role;
	String fullName;

    static constraints = {

		fullName(blank:false)
		header(blank:false, unique:true)
		data(blank:false)
		role(blank:false)
    }
}
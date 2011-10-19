component{
	
	 	/**
	*@getters true
	*@setters true
	*/
	property String firstName;
	
	/**
	*@getters true
	*@setters true
	*/
	property String lastName;

	public void function init(String firstName = "", String lastName = ""){
		this.firstName = arguments.firstName;
		this.lastName = arguments.lastName;
	}

	public String function getFullName(){
		return this.firstName & " " & this.lastName;
	}

	public Any function onMissingMethod(String missingMethodName, Struct missingMethodArguments){

		if(structKeyExists(missingMethodArguments,"1") && structKeyExists(missingMethodArguments,"2")){
			return missingMethodArguments[2] & " " & missingMethodArguments[1];				
		}	
	}

	public String function getOne(){
		return "1";
	}

	public String function getTwo(){
		return "2";
	}
}
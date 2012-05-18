/**
* @mxunit:decorators mxunit.framework.decorators.OrderedTestDecorator
*/
component extends="Koans.BaseKoan"{
	
	/**
	*@order 1
	*/
	public void function testNotVarScopingVariablesPutsVarInVariablesScope(){
		//in ColdFusion using the var keyword in front of a variable declaration assures that it doesn't end up in the components variables scope which is global to the component, for example var bar = "bar". Fix this declaration to make sure that is myVar is not in the variables scopescope
		myVar = "This is bad";

		//make this statement pass by modifying the variable declaration above
		assertFalse(isDefined("variables.myVar"));
	}

	/**
	*@order 2
	*/
	public void function testIfAVariableExists(){
		//the isdefined function will tell you if a variable exists or not	
		assertEquals(__,isDefined("foo")); 
	}

	/**
	*@order 3
	*/
	public void function testScoping(){
		/*
		ColdFusion has many 'scopes' in which it stored variables. 
		Each of these scopes is treated like a structure
		When you do not 'scope' your varaible (such as calling session.foo instaed of just foo) ColdFusion
		will seacrh through each of the scopes until it finds a variable with that name.
		As such, you should ALWAYS scope your variables.
		
		ColdFusion scopes include:
		application: values stored in application scope are available in any .cfm or .cfc file under the same cfapplication
			application scope is typically used to store information specifci to the application ans is availabel to all users.
		session: values stored in session scope are available in any .cfm or .cfc file for the existing session
			session scope is typically used to store information specific to a single user or session
		request scope: values stored in the request scope area vailable in any .cfm or .cfc file during a sinlge request.
		form scope: values from a form post are stored in the form scope and are available in any .cfm or .cfc file during a single request
		url scope: values from the query string are stored in the url scope and are available in any .cfm or .cfc file during a single request
		cgi scope: this read-only scope contains values about the request, such as user_agent, server_name, etc. and are available in any .cfm or .cfc file on every request.
		arguments scope: arguments passed into a function are stored in a structue and are availabelo only inside the function to which they are defined.
			If you do not use named arguments, the structure will contain keys that will be numbered with how many arguments are passed.
		variables scope: variables that are set on .cfm or .cfc page are automatically stored in the variables scope if no other scope is given.
		
		*/
		var foo = "local foo";
		arguments.foo = "arg foo";
		variables.foo = "variables foo";
		application.foo = "app foo";
		session.foo = "session foo";

		//which foo will ColdFusion find first?
		assertEquals(__,foo);
		
		/*********************
		* 
		*********************/
		structDelete(local,"foo");

		//wich foo will ColdFusion find second?
		assertEquals(__,foo);

		/*********************
		* 
		*********************/
		structDelete(arguments,"foo");

		//which foo will ColdFusion find third?
		assertEquals(__,foo);
	}
}
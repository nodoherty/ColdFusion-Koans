component extends="mxunit.framework.TestCase"{

	public void function testNotVarScopingVariablesPutsVarInVariablesScope(){
		//in ColdFusion using the var keyword in front of a variable declaration assures that it doesn't end up in the components variables scope which is global to the component, for example var bar = "bar". Fix this declaration to make sure that is myVar is not in the variables scopescope
		myVar = "This is bad";

		//make this statement pass by modifying the variable declaration above
		assertFalse(isDefined("variables.myVar"));
	}

	public void function testIfAVariableExists(){
		//the isdefined function will tell you if a variable exists or not	
		assertEquals(isDefined("foo"),"__"); 
	}

	public void function testScoping(){
		var foo = "local foo";
		arguments.foo = "arg foo";
		variables.foo = "variables foo";
		application.foo = "app foo";
		session.foo = "session foo";

		//which foo will ColdFusion find first?
		assertEquals(foo,"__");
		
		/*********************
		* 
		*********************/
		structDelete(local,"foo");

		//wich foo will ColdFusion find second?
		assertEquals(foo,"__");

		/*********************
		* 
		*********************/
		structDelete(arguments,"foo");

		//which foo will ColdFusion find third?
		assertEquals(foo,"__");
	}
}
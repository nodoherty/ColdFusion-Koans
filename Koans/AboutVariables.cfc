component extends="mxunit.framework.TestCase"{

	public void function testNotVarScopingVariablesPutsVarInVariablesScope(){
		//in ColdFusion using the var keyword in front of a variable declaration assures that it doesn't end up in the components variables scope which is global to the component. Fix this declaration to make sure that is myVar is not in the variables scopescope
		myVar = "This is bad";

		assertFalse(isDefined("variables.myVar"));
	}

	public void function testAddingStringAndNumber(){
		//string concatanation in ColdFusion is done with the & sign
		var myVar = 1 & "Hello";
		assertEquals("__",myVar);
	}

	public void function testAddingTwoNumbers(){
		//What happens when we add a number and a string?
		var myVar = 1 + "1";
		assertEquals("__",myVar);
	}
	
}
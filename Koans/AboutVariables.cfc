component extends="mxunit.framework.TestCase"{

	public void function testNotVarScopingVariablesPutsVarInVariablesScope(){
		//in ColdFusion using the var keyword in front of a variable declaration assures that it doesn't end up in the components variables scope which is global to the component. Fix this declaration to make sure that is myVar is not in the variables scopescope
		myVar = "This is bad";

		//make this statement pass by modifying the variable declaration above
		assertFalse(isDefined("variables.myVar"));
	}

	public void function testIfAVariableExists(){
		//the isdefined function will tell you if a variable exists or not	
		assertEquals(isDefined("foo"),"__"); 
	}
}
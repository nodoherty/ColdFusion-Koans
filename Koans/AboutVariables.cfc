component extends="mxunit.framework.TestCase"{

	public void function testNotVarScopingVariablesPutsVarInVariablesScope(){
		//in ColdFusion using the var keyword in front of a variable declaration assures that it doesn't end up in the components variables scope which is global to the component. Fix this declaration to make sure that is myVar is not in the variables scopescope
		myVar = "This is bad";

		assertFalse(isDefined("variables.myVar"));
	}
	
}
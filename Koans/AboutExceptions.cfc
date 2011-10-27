component extends="mxunit.framework.TestCase" {

	public void function testCapturingAnError(){		
		var errorType = "";

		try{
			createError();
		}
		catch(Object ex){
			errorType = ex.type;
		}
		catch(Expression ex){
			errorType = ex.type;
		}
		catch(Application ex){
			errorType = ex.type;	
		}
		catch(Any ex){
			errorType = "any";
		}

		//For a complete list or error types in ColdFusion9 visit http://adobe.ly/vFRFKo
		assertEquals(errorType,"__");
	}

	private void function createError(){
		var oops = 1 + doesntExist;
	}

	public void function testCapturingACustomeError(){		
		var errorType = "";

		try{
			throwError();
		}
		catch(Any ex){
			errorType = ex.type;
		}

		assertEquals(errorType,"__");
	}

	private void function throwError(){
		throw(type="User Generated Error",message="I am a user generated error.");
	}
}
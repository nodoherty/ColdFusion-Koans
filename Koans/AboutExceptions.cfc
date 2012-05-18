/**
* @mxunit:decorators mxunit.framework.decorators.OrderedTestDecorator
*/
component extends="Koans.BaseKoan" {
	
	/**
	*@order 1
	*/
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
		assertEquals(__,errorType);
	}

	private void function createError(){
		var oops = 1 + doesntExist;
	}

	/**
	*@order 2
	*/
	public void function testCapturingACustomeError(){		
		var errorType = "";

		try{
			throwError();
		}
		catch(Any ex){
			errorType = ex.type;
		}

		assertEquals(__,errorType);
	}

	private void function throwError(){
		throw(type="UserGeneratedError",message="I am a user generated error.");
	}

	/** 
 	* @mxunit:expectedException CustomErrorType
 	* @order 3
 	*/ 
	public void function testCreatingYourOwnException(){
		generateError();
	}

	private void function generateError(){
		//use the function throwError as an example
	}
}
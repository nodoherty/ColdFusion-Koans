component extends="mxunit.framework.TestCase"{

	private boolean function isTruthy(Any myVar){

		if(isBoolean(arguments.myVar)){
			return (arguments.myVar) ? true : false;	
		}
		else{
			return false;
		}
	}

	public void function testBooleanValue(){
		assertEquals(isTruthy(true),"__");
		assertEquals(isTruthy(false),"__");
	}

	public void function testStringValue1(){
		assertEquals(isTruthy("yes"),"__");
		assertEquals(isTruthy("no"),"__");
	}

	public void function testStringValue2(){
		assertEquals(isTruthy("true"),"__");
		assertEquals(isTruthy("false"),"__");
	}

	public void function testStringValue3(){
		assertEquals(isTruthy("y"),"__");
		assertEquals(isTruthy("n"),"__");
	}

	public void function testNumericValue(){
		assertEquals(isTruthy(-2),"__");
		assertEquals(isTruthy(0),"__");
	}
}
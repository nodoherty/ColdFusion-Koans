component extends="mxunit.framework.TestCase"{

	public boolean function isTruthy(Any myVar){

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
		assertEquals(isTruthy(isTruthy("yes")),"__");
		assertEquals(isTruthy(isTruthy("no")),"__");
	}

	public void function testStringValue2(){
		assertEquals(isTruthy(isTruthy("true")),"__");
		assertEquals(isTruthy(isTruthy("false")),"__");
	}

	public void function testStringValue3(){
		assertEquals(isTruthy(isTruthy("y")),"__");
		assertEquals(isTruthy(isTruthy("n")),"__");
	}

	public void function testNumericValue(){
		assertEquals(isTruthy(isTruthy(-2)),"__");
		assertEquals(isTruthy(isTruthy(0)),"__");
	}
}
/**
* @mxunit:decorators mxunit.framework.decorators.OrderedTestDecorator
*/
component extends="mxunit.framework.TestCase"{

	private boolean function isTruthy(Any myVar){

		if(isBoolean(arguments.myVar)){
			return (arguments.myVar) ? true : false;	
		}
		else{
			return false;
		}
	}

	/**
	*@order 1
	*/
	public void function testBooleanValue(){
		assertEquals(isTruthy(true),"__");
		assertEquals(isTruthy(false),"__");
	}

	/**
	*@order 2
	*/
	public void function testStringValue1(){
		assertEquals(isTruthy("yes"),"__");
		assertEquals(isTruthy("no"),"__");
	}

	/**
	*@order 3
	*/
	public void function testStringValue2(){
		assertEquals(isTruthy("true"),"__");
		assertEquals(isTruthy("false"),"__");
	}

	/**
	*@order 4
	*/
	public void function testStringValue3(){
		assertEquals(isTruthy("y"),"__");
		assertEquals(isTruthy("n"),"__");
	}

	/**
	*@order 5
	*/
	public void function testNumericValue(){
		assertEquals(isTruthy(-2),"__");
		assertEquals(isTruthy(0),"__");
	}
}
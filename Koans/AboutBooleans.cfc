/**
* @mxunit:decorators mxunit.framework.decorators.OrderedTestDecorator
*/
component extends="Koans.BaseKoan"{

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
		assertEquals(__,isTruthy(true));
		assertEquals(__,isTruthy(false));
	}

	/**
	*@order 2
	*/
	public void function testStringValue1(){
		assertEquals(__,isTruthy("yes"));
		assertEquals(__,isTruthy("no"));
	}

	/**
	*@order 3
	*/
	public void function testStringValue2(){
		assertEquals(__,isTruthy("true"));
		assertEquals(__,isTruthy("false"));
	}

	/**
	*@order 4
	*/
	public void function testStringValue3(){
		assertEquals(__,isTruthy("y"));
		assertEquals(__,isTruthy("n"));
	}

	/**
	*@order 5
	*/
	public void function testNumericValue(){
		assertEquals(__,isTruthy(-2));
		assertEquals(__,isTruthy(0));
	}
}
/**
* @mxunit:decorators mxunit.framework.decorators.OrderedTestDecorator
*/
component extends="Koans.BaseKoan"{
	
	/**
	*@order 1
	*/
	public void function testTrueShouldBeTrue(){
		//try replacing false with true
		assertTrue(false);
	}	

	/**
	*@order 2
	*/
	public void function testStringsShouldBeEqual(){
		var result = "Foo";
		
		/*in the koans __ represents a value that you need to 
		fill in to make the test return true in  */
		assertEquals(__,result);
	}

	/**
	*@order 3
	*/
	public void function testResultShouldBeEqual(){
		var result = 0;

		/*and sometimes you'll need to update the code itself to 
		make the test pass.  Here you'll need to change the value
		of result to make the test pass */
		assertEquals(5,result); //also note that the "" are optional here
	}
}
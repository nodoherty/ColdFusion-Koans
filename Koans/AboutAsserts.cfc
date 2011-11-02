component extends="mxunit.framework.TestCase"{

	public void function testTrueShouldBeTrue(){
		//try replacing false with true
		assertTrue(false);
	}	

	public void function testStringsShouldBeEqual(){
		var result = "Foo";
		
		/*in the koans __ represents a value that you need to 
		fill in to make the test return true in  */
		assertEquals(result,"__");
	}

	public void function testResultShouldBeEqual(){
		var result = 0;

		/*and sometimes you'll need to update the code itself to 
		make the test pass.  Here you'll need to change the value
		of result to make the test pass */
		assertEquals(result,5); //also note that the "" are optional here
	}
}
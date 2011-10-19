component extends="mxunit.framework.TestCase"{

	public void function testTrueShouldBeTrue(){
		//try replacing false with true
		assertTrue(false);
	}	

	public void function testStringsShouldBeEqual(){
		var result = "Foo";
		
		//in the koans __ represents a value that you need to fill in to make the test return true
		//in some cases you'll want to keep the "" and in some you wont (see next example)
		assertEquals(result,"__");
	}

	public void function testResultShouldBeEqual(){
		var result = 2+3;

		//sometimes you'll be filling out the actual value (like above) and sometimes you'll be 
		//filling out the expected value like so:
		assertEquals(result,"__"); //also note that the "" are optional here
	}
}
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
		assertEquals(__,result); //also note that the 
	}

	/**
	* @order 4
	*/
	public void function testNotEqual(){
		var result = '';

		/*Similar to assertEquals, we have the assertNotEquals for situations where we want to make sure 
		that things are not equal */
		assertNotEquals(__,result);  //change __ to make __ not equal result
	}

	/**
	* @order 5
	*/
	public void function testMultiplePaths(){
		var actual = "";

		try{

			/* what value do we need to pass into this to make this test pass? */
			actual = multiplePaths(__); 

			assertTrue(actual);
		}
		catch(any ex){

			/* the fail method is a great way to use as a placeholder when doing TDD.  Create a test
			   then just tell it to deliberately fail */  
			fail("Multiple paths expected a number argument, but the argument passed in was not a number.");
		}
	}

	/**
	* @order 6
	*/
	public void function testMultiplePathsPart2(){
		var actual = "";

		try{

			/* The last test only told part of the story!  We need to make sure we test ALL the paths
			   through the function.  What can we pass into the function to make sure we get false? */
			actual = multiplePaths(__); 

			assertFalse(actual);
		}
		catch(any ex){

			/* the fail method is a great way to use as a placeholder when doing TDD.  Create a test
			   then just tell it to deliberately fail */  
			fail("Multiple paths expected a number argument, but the argument passed in was not a number.");
		}
	}

	private boolean function multiplePaths(numeric number){
		if(number < 10){
			return true;
		}
		else{
			return false;
		}
	}
}
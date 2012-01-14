/**
* @mxunit:decorators mxunit.framework.decorators.OrderedTestDecorator
*/
component extends="mxunit.framework.TestCase"{
	
	/**
	*@order 1
	*/
	public void function testCheckingIfAStructKeyExists(){
		var myStruct = {foo = "Foo"};

		//what is the key value that will make this test pass
		assertTrue(structKeyExists(myStruct,"__"));
	}

	/**
	*@order 2
	*/
	public void function testAddingAStructKey(){
		var myStruct = {foo = "Foo"};

		//add the correct key and value to the mystruct to make the test pass		
		assertEquals(myStruct.bar,"Bar");
	}

	/**
	*@order 3
	*/
	public void function testGettingStructKey(){
		var myStruct = {bar = "Bar"};

		//there are two ways to access a structure's data:
		// 1) structureName.key
		// 2) structureName["key"] - this way is useful if you have dynamic keys or spaces in keys

		assertEquals("__","Bar");
		//access the sturcture key in another way
		assertEquals("__","Bar");
	}

	/**
	*@order 4
	*/
	public void function testDeletingStruct(){
		
		// Use StructDelete() to remove an element from a structure
		// Usage: structDelete(structure, key)
		// Reference: http://help.adobe.com/en_US/ColdFusion/9.0/CFMLRef/WSc3ff6d0ea77859461172e0811cbec22c24-7f07.html
		
		// Let's create our struct, assigning great cars as our keys
		var carStruct = { bmw = "good", delorean = "great!" };

		// Let's use structDelete() to remove the lesser car.
		structDelete(carStruct, "bmw"); 

		// Let's  use the structKeyExists() function to see if our BMW still exists
		assertEquals(structKeyExists(carStruct, "bmw"), "yes");

	}
}
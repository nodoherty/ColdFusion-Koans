component extends="mxunit.framework.TestCase"{

	public void function testGettingStringLength(){
		
		// Use the len() function to return the length of a string or binary object
		// For now, we'll work with a simple string
		// Usage: len(string)
		
		var myVar = "apple";

		assertEquals(len(myVar),"__");
		
	}

	public void function testRepeatingString(){
		
		// Use the repeatString() function to repeat a string
		// Usage: repeatString(string, count)

		var myVar = "Ho! "; // Notice the trailing space

		assertEquals(repeatString(myVar, 3), "__");

	}

	public void function testReversingString(){
		
		// Use the reverse() function to reverse a string
		// Usage: reverse(string)

		var myVar = "otatop";

		assertEquals(reverse(myVar), "__"); // Hint: spuds

	}

	public void function testGettingStringContentFromLeft(){
		
		// Use the left() function to return a specified number of characters from a string, beginning at the left.
		// Usage: left(string, count)

		var myVar = "peanut";
		
		assertEquals(left(myVar, 3), "__" );

	}

	public void function testGettingStringContentFromRight(){

		// Use the right() function to return a specified number of characters from a string, beginning at the right.
		// Usage: right(string, count)

		var myVar = "peanut";
		
		assertEquals(right(myVar, 3), "__" );

	}

	public void function testAddingStringAndNumber(){
		//string concatanation in ColdFusion is done with the & sign
		var myVar = 1 & "Hello";
		assertEquals(myVar,"__");
	}	

	public void function testRemovingWhiteSpace(){
		var myVar = "  hello world!  ";

		assertEquals(trim(myVar),"__");
	}
	
	public void function testRemovingLeadingSpaces() {

		// Use the lTrim() function to removes spaces from the beginning of a string
		// Usage: lTrim(string)

		var myVar = "  hello world!  ";		

		assertEquals(lTrim(myVar), "__");
	}

	public void function testRemovingTrailingSpaces() {

		// Use the rTrim() function to removes spaces from the end of a string
		// Usage: rTrim(string)

		var myVar = "  hello world!  ";		

		assertEquals(rTrim(myVar), "__");

	}

	public void function testSearchingString(){
		var myVar = "To start press any key.  Wheres the any key?";

		assertEquals(findNoCase("ANY",myVar),"__");
	}

	public void function testSearchingString2(){
		var myVar = "To start press any key.  Wheres the any key?";

		assertEquals(findNoCase("ANY",myVar,26),"__");
	}

	public void function testSearchingString3(){
		var myVar = "To start press any key.  Wheres the any key?";

		assertEquals(find("ANY",myVar,26),"__");
	}

	public void function testStringReplace(){
		var myVar = "To start press any key.  Wheres the any key?";

		assertEquals(replace(myVar,"any","pound"),"__");
	}

	public void function testStringReplace2(){
		var myVar = "To start press any key.  Wheres the any key?";

		//Did that last test get you?  To replace all occurances you need to pass another argument to find
		assertEquals(replace(myVar,"any","pound","all"),"__");
	}
}
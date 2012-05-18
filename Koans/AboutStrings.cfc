/**
* @mxunit:decorators mxunit.framework.decorators.OrderedTestDecorator
*/
component extends="Koans.BaseKoan"{

	/**
	*@order 1
	*/
	public void function testGettingStringLength(){
		
		// Use the len() function to return the length of a string or binary object
		// For now, we'll work with a simple string
		// Usage: len(string)
		
		var myVar = "apple";

		assertEquals(__,len(myVar));
		
	}

	/**
	*@order 2
	*/
	public void function testRepeatingString(){
		
		// Use the repeatString() function to repeat a string
		// Usage: repeatString(string, count)

		var myVar = "Ho! "; // Notice the trailing space

		assertEquals(__,repeatString(myVar, 3));

	}

	/**
	*@order 3
	*/
	public void function testReversingString(){
		
		// Use the reverse() function to reverse a string
		// Usage: reverse(string)

		var myVar = "otatop";

		assertEquals(__,reverse(myVar)); // Hint: spuds

	}

	/**
	*@order 4
	*/
	public void function testGettingStringContentFromLeft(){
		
		// Use the left() function to return a specified number of characters from a string, beginning at the left.
		// Usage: left(string, count)

		var myVar = "peanut";
		
		assertEquals(__,left(myVar, 3) );

	}

	/**
	*@order 5
	*/
	public void function testGettingStringContentFromRight(){

		// Use the right() function to return a specified number of characters from a string, beginning at the right.
		// Usage: right(string, count)

		var myVar = "peanut";
		
		assertEquals(__,right(myVar, 3) );

	}

	/**
	*@order 6
	*/
	public void function testGettingSubString(){
		
		// Use the mid() function to extract a substring from a string
		// Usage: mid(string, start, count)

		var goodActor = "Chevy Chase";

		// Hint: Good automobile maker
		assertEquals(__,mid(goodActor, 1, 5)); 
	}

	/**
	*@order 7
	*/
	public void function testAddingStringAndNumber(){
		//string concatanation in ColdFusion is done with the & sign
		var myVar = 1 & "Hello";
		assertEquals(__,myVar);
	}	

	/**
	*@order 8
	*/
	public void function testRemovingWhiteSpace(){
		var myVar = "  hello world!  ";

		assertEquals(__,trim(myVar));
	}
	
	/**
	*@order 9
	*/
	public void function testRemovingLeadingSpaces() {

		// Use the lTrim() function to removes spaces from the beginning of a string
		// Usage: lTrim(string)

		var myVar = "  hello world!  ";		

		assertEquals(__,lTrim(myVar));
	}

	/**
	*@order 10
	*/
	public void function testRemovingTrailingSpaces() {

		// Use the rTrim() function to removes spaces from the end of a string
		// Usage: rTrim(string)

		var myVar = "  hello world!  ";		

		assertEquals(__,rTrim(myVar));

	}

	/**
	*@order 11
	*/
	public void function testRemovingChars(){
		
		// Use the removeChars() function to remove characters from a string
		// Usage: removeChars(string, start, count)

		var greatMoviePlot = "Marty and the Doc go back to the future";

		// Hint: another great movie plot.

		assertEquals(__,removeChars(greatMoviePlot, 21, 5));

	}

	/**
	*@order 12
	*/
	public void function testSearchingString(){
		var myVar = "To start press any key. Where's the any key?";

		assertEquals(__,findNoCase("ANY",myVar));
	}

	/**
	*@order 13
	*/
	public void function testSearchingString2(){
		var myVar = "To start press any key. Where's the any key?";

		assertEquals(__,findNoCase("ANY",myVar,26));
	}

	/**
	*@order 14
	*/
	public void function testSearchingString3(){
		var myVar = "To start press any key. Where's the any key?";

		assertEquals(__,find("ANY",myVar,26));
	}

	/**
	*@order 15
	*/
	public void function testStringReplace(){
		var myVar = "To start press any key. Where's the any key?";

		assertEquals(__,replace(myVar,"any","pound"));
	}

	/**
	*@order 16
	*/
	public void function testStringReplace2(){
		var myVar = "To start press any key. Where's the any key?";

		//Did that last test get you?  To replace all occurances you need to pass another argument to find
		assertEquals(__,replace(myVar,"any","pound","all"));
	}

	/**
	*@order 17
	*/
	public void function testSpanExcluding(){
		
		// Use the spanExcluding() function to gets characters from a string, starting from the beginning and stopping when it encounters any of the specified characters
		// Note: The search is case sensitive. 
		// Usage: spanExcluding(string, set)

		var martySays = "Yeah well Biff, you're forgetting one thing. What the heck is that!!?";
		// Hint: Watch out for trailing spaces

		assertEquals(__,spanExcluding(martySays, "W"));

	}

	/**
	*@order 18
	*/
	public void function testSpanIncluding(){
		
		// Use the spanIncluding() function to get characters from a string, from the beginning and stopping when it encounters any character that IS NOT in the specified character set. 
		// Note: The search is case sensitive. 
		// Usage: spanIncluding(string, set)

		var martySays = "This is heavy.";

		// Hint: If letters could talk, one might say this.

		assertEquals(__,spanIncluding(martySays, "This "));

	}
}
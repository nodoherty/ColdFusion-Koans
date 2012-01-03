component extends="mxunit.framework.TestCase"{

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

		// ColdFusion has a LTrim(string) function that removes spaces from the beginning of a string

		var myVar = "  hello world!  ";		

		assertEquals(lTrim(myVar),"__");
	}

	public void function testRemovingTrailingSpaces() {

		// ColdFusion has a RTrim(string) function that removes spaces from the end of a string

		var myVar = "  hello world!  ";		

		assertEquals(rTrim(myVar),"__");
	}

	public void function testSearchingStirng(){
		var myVar = "To start press any key.  Wheres the any key?";

		assertEquals(findNoCase("ANY",myVar),"__");
	}

	public void function testSearchingStirng2(){
		var myVar = "To start press any key.  Wheres the any key?";

		assertEquals(findNoCase("ANY",myVar,26),"__");
	}

	public void function testSearchingStirng3(){
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
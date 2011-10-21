component extends="mxunit.framework.TestCase"{

	public void function testListWithNonStandardDelimitors(){
	    var myList = "apple_pear_banana_grape";
	    //passing a delminiter for a 3rd parameter into listgetadd lets just about any string act as a list
	    //this can be extremely helpful when dealing with dynamic forms
		var result = listGetAt(myList,2,"_");	    

	    assertEquals(result,"__");
	}

	public void function testChangingAListDelimiter(){
		var myList = "apple_pear_banana";
		myList = listChangeDelims(myList,",","_");

		assertEquals(myList,"__");
	}
}
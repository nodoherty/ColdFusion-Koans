/**
* @mxunit:decorators mxunit.framework.decorators.OrderedTestDecorator
*/
component extends="Koans.BaseKoan"{
	
	/**
	*@order 1
	*/
	public void function testListWithNonStandardDelimitors(){
	    var myList = "apple_pear_banana_grape";
	    //passing a delminiter for a 3rd parameter into listgetadd lets just about any string act as a list
	    //this can be extremely helpful when dealing with dynamic forms
		var result = listGetAt(myList,2,"_");	    

	    assertEquals(__,result);
	}

	/**
	*@order 2
	*/
	public void function testChangingAListDelimiter(){
		var myList = "apple_pear_banana";
		myList = listChangeDelims(myList,",","_");

		assertEquals(__,myList);
	}
}
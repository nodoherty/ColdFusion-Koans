/**
* @mxunit:decorators mxunit.framework.decorators.OrderedTestDecorator
*/
component extends="mxunit.framework.TestCase"{
	
	/**
	*@order 1
	*/
	public void function testGetingArrayLength(){
		var myArray = ["one","two","three"];

		assertEquals(arrayLen(myArray),"__");
	}

	/**
	*@order 2
	*/
	public void function testGettingArrayElement(){
		var myArray = ["one","two","three"];
		
		//arrays in coldfusion start with an index of one, not zero like a lot of languages
		assertEquals(myArray[1],"__");		
	}

	/**
	*@order 3
	*/
	private String function returnString(String myArg){
		                  
	}

	/**
	*@order 4
	*/
	public void function testAppendingArrayElements(){
		var myArray = ["one","two","three"];
		
		arrayAppend(myArray,"four");
		
		assertEquals(myArray[4],"__");
	}

	/**
	*@order 5
	*/
	public void function testArrayTextSorting(){
		var myArray = ["pineapple","banana","grape","kiwi"];

		arraySort(myArray,"text");

		assertEquals(myArray[2],"__");
	}

	/**
	*@order 6
	*/
	public void function testArrayNumberSorting(){
		var myArray = [6,9,34,8,22];

		arraySort(myArray,"numeric");

		assertEquals(myArray[3],"__");
	}
}
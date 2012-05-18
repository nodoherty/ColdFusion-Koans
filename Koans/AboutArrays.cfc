/**
* @mxunit:decorators mxunit.framework.decorators.OrderedTestDecorator
*/
component extends="Koans.BaseKoan"{
	
	/**
	*@order 1
	*/
	public void function testGetingArrayLength(){
		var myArray = ["one","two","three"];

		assertEquals(__,arrayLen(myArray));
	}

	/**
	*@order 2
	*/
	public void function testGettingArrayElement(){
		var myArray = ["one","two","three"];
		
		//arrays in coldfusion start with an index of one, not zero like a lot of languages
		assertEquals(__,myArray[1]);		
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
		
		assertEquals(__,myArray[4]);
	}

	/**
	*@order 5
	*/
	public void function testArrayTextSorting(){
		var myArray = ["pineapple","banana","grape","kiwi"];

		arraySort(myArray,"text");

		assertEquals(__,myArray[2]);
	}

	/**
	*@order 6
	*/
	public void function testArrayNumberSorting(){
		var myArray = [6,9,34,8,22];

		arraySort(myArray,"numeric");

		assertEquals(__,myArray[3]);
	}
}
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

	/**
	*@order 7
	*/
	public void function testIsArray(){
		var myArray = [5,10,15,20,25];
		// hint: IsArray returns true or false
		assertEquals(__,isArray(myArray));
	}

	/**
	*@order 8
	*/
	public void function testArrayClear(){
		var myArray = [5,10,15,20,25];
		
		arrayClear(myArray);
		// how many elements are in the array after calling arrayClear?
		assertEquals(__,arrayLen(myArray));
	}

	/**
	*@order 9
	*/
	public void function testArrayDeleteAt(){
		var myArray = [5,10,15,20,25];
		
		arrayDeleteAt(myArray, 1);
		// what is the value of the first element in the array?
		assertEquals(__,myArray[1]);
	}

	/**
	*@order 10
	*/
	public void function testArrayInsertAt(){
		var myArray = [5,10,15,20,25];
		
		arrayInsertAt(myArray, 1, "hello");
		// what is the value of the first element in the array?
		assertEquals(__,myArray[1]);
	}

	/**
	*@order 11
	*/
	public void function testArrayContains(){
		var myArray = [5,10,15,20,25];
		
		// hint: arrayContains returns true or false
		assertEquals(__,arrayContains(myArray,15));
	}

	/**
	*@order 12
	*/
	public void function testArrayIsDefined(){
		var myArray = [5,10,15,20];
		
		// hint: arrayIsDefined returns true or false
		assertEquals(__,arrayIsDefined(myArray,5));
	}

	/**
	*@order 13
	*/
	public void function testArrayIsEmpty(){
		var myArray = [5,10,15,20];
		
		// hint: ArrayIsEmpty returns true or false
		assertEquals(__,arrayIsEmpty(myArray));
	}

	/**
	*@order 14
	*/
	public void function testArrayPrepend(){
		var myArray = [5,10,15,20];
		
		ArrayPrepend(myArray,"hello");
		assertEquals(__,myArray[1]);
	}
	
	/**
	*@order 15
	*/
	public void function testArrayMin(){
		var myArray = [25,10,5,15];

		assertEquals(__,arrayMin(myArray));
	}
	
	/**
	*@order 16
	*/
	public void function testArrayMax(){
		var myArray = [25,10,5,15];

		assertEquals(__,arrayMax(myArray));
	}

	/**
	*@order 17
	*/
	public void function testArrayAverage(){
		var myArray = [5,10,15,20,25];

		assertEquals(__,arrayAvg(myArray));
	}

	/**
	*@order 18
	*/
	public void function testArraySum(){
		var myArray = [5,10,15,20];
		// hint: arraySum adds all the values together
		assertEquals(__,arraySum(myArray));
	}

	/**
	*@order 19
	*/
	public void function testArrayDelete(){
		var myArray = [25,10,5,15];

		arrayDelete(myArray,5);
		// hint: arrayDelete removes an element
		assertEquals(__,myArray[3]);
	}

	/**
	*@order 20
	*/
	public void function testArrayFind(){
		var myArray = ["YODA","Yoda","yoda"];
		// hint: arrayFind is not case sensitive
		assertEquals(__,arrayFind(myArray,"Yoda"));
	}
	
	/**
	*@order 21
	*/
	public void function testArrayFindNoCase(){
		var myArray = ["YODA","Yoda","yoda"];
		// hint: arrayFind is case sensitive
		assertEquals(__,arrayFindNoCase(myArray,"Yoda"));
	}
	
	/**
	*@order 22
	*/
	public void function testArraySwap(){
		var myArray = ["Luke","Leia","Yoda"];
		arraySwap(myArray, 1, 3);
		// hint: arraySwap switches element positions
		assertEquals(__,myArray[1]);
	}
}
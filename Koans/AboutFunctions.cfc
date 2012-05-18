/**
* @mxunit:decorators mxunit.framework.decorators.OrderedTestDecorator
*/
component extends="Koans.BaseKoan"{
	
	/**
	*@order 1
	*/
	public void function testInvokingAFunction(){
		//functions in ColdFusion are an easy way to encapsulate functionality
		var sum = add(1,2);

		assertEquals(sum,"__");
	};

	private numeric function add(numeric a, numeric b){
		return a + b;
	}

	/**
	*@order 2
	*/
	public void function testCopyingAFunction(){
		//functions are also first class citizens in coldfusion, meaning they can be passed around like vars
		var myStruct = {};
		var sum = 0;
		
		//we can copy the add function to a property on the sturcture **note functions live in the variables scope of a component**

		myStruct.add = variables.add;
		sum = myStruct.add(3,4);

		assertEquals(sum,"__");
	}

	/**
	*@order 3
	*/
	public void function testFunctionArguments(){
		//look at the add2 function below, it has an empty argument signature, but it can seill accept arguments
		var sum = add2(4,5);

		assertEquals(sum,"__");
	}

	private numeric function add2(){
		return arguments[1] + arguments[2];
	}

	/**
	*@order 4
	*/
	public void function testPassArrayIntoFunction(){
		var myArray = ["peach","apple","strawberry","orange"];

		changeArray(myArray);
		//what is the value of my array AFTER its passed into the changeArray function
		assertEquals(myArray[1],"__");
		//what does this mean?  Go here for more information http://adobe.ly/rp0TGa

	}

	private function changeArray(Array theArray){
		arguments.theArray[1] = "Pizza";
	}

	/**
	*@order 5
	*/
	public void function testPassStructIntoFunction(){
		var myStruct = {fruit = "apple",veggie="carrot"};

		changeStruct(myStruct);
		//what the value of the veggie key after its passed into changeStruct
		assertEquals(myStruct.veggie,"__");
		//what does this mean?  Go here for more information http://adobe.ly/rp0TGa
	}

	/**
	*@order 6
	*/
	public void function testCopyStructThenPassItIntoFunction(){
		var myStruct = {fruit = "apple",veggie="carrot"};
		var myOtherStruct = myStruct;

		changeStruct(myOtherStruct);

		assertEquals(myStruct.veggie,"__");
	}

	/**
	*@order 7
	*/
	public void function testCopyStructUsingStructThenPassItIntoFunction(){
		var myStruct = {fruit = "apple",veggie="carrot"};
		var myOtherStruct = structCopy(myStruct);

		changeStruct(myOtherStruct);

		assertEquals(myStruct.veggie,"__");
	}

	private function changeStruct(Struct theStruct){
		if(structKeyExists(theStruct,"veggie")){
			theStruct.veggie = "Pizza";
		}
	}
	
	//Demonstrate how argumentsCollections can be used to pass subset of named arguments
	/**
	*@order 8
	*/
	public void function testArgumentCollection(){
		var aCollection = {fruit1 = "pear", fruit2 = "banana", fruit3 = "grape"};
		var myStruct = switchParams( argumentCollection = aCollection);
		
		assertEquals(myStruct.fruit1,"__");
		assertEquals(myStruct.fruit2,"__");
		assertEquals(myStruct.fruit3,"__");	
	}
	
	private function switchParams(string fruit1, string fruit2, string fruit3){
		return {fruit1 = fruit2, fruit2 = fruit1, fruit3 = fruit3};
	}
}
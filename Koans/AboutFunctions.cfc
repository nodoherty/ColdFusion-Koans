component extends="mxunit.framework.TestCase"{
	
	public void function testInvokingAFunction(){
		//functions in ColdFusion are an easy way to encapsulate functionality
		var sum = add(1,2);

		assertEquals(sum,"__");
	};

	private numeric function add(numeric a, numeric b){
		return a + b;
	}

	public function testCopyingAFunction(){
		//functions are also first class citizens in coldfusion, meaning they can be passed around like vars
		var myStruct = {};
		var sum = 0;
		
		//we can copy the add function to a property on the sturcture **note functions live in the variables scope of a component**

		myStruct.add = variables.add;
		sum = myStruct.add(3,4);

		assertEquals(sum,"__");

	}
}
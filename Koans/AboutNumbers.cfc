component extends="mxunit.framework.TestCase"{
	public void function testAddingTwoNumbers(){
		//What happens when we add a number and a string?
		var myVar = 1 + "1";
		assertEquals(myVar,"__");
	}
	
	public void function testAddingNumbers(){
		var a = 0.01;
		var b = 0.06;
		
		//bonus points if you get this right on your first try without looking
		//read this article on floating point math if you want to know more: http://bit.ly/eD78Ve
		assertEquals(a+b,"__");
	}	

	public void function testPrecisionEvaluate(){
		var a = 0.01;
		var b = 0.06;
		
		//this is much slower than regular floating point math, but you'll like the result
		assertEquals(PrecisionEvaluate(a+b),"__");
	}

	public void function testModulus(){
		var myNum = 8;

		assertEquals(myNum mod 2,"__");
	}

	public void function testModulus2(){
		var myNum = 5;

		assertEquals(myNum mod 2,"__");
	}
}

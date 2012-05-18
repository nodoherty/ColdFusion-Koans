/**
* @mxunit:decorators mxunit.framework.decorators.OrderedTestDecorator
*/
component extends="Koans.BaseKoan"{
	/**
	*@order 1
	*/
	public void function testAddingTwoNumbers(){
		//What happens when we add a number and a string?
		var myVar = 1 + "1";
		assertEquals(__,myVar);
	}
	
	/**
	*@order 2
	*/
	public void function testAddingNumbers(){
		var a = 0.01;
		var b = 0.06;
		
		//bonus points if you get this right on your first try without looking
		//read this article on floating point math if you want to know more: http://bit.ly/eD78Ve
		assertEquals(__,a+b);
	}	

	/**
	*@order 3
	*/
	public void function testPrecisionEvaluate(){
		var a = 0.01;
		var b = 0.06;
		
		//this is much slower than regular floating point math, but you'll like the result
		assertEquals(__,PrecisionEvaluate(a+b));
	}

	/**
	*@order 4
	*/
	public void function testModulus(){
		var myNum = 8;

		assertEquals(__,myNum mod 2);
	}

	/**
	*@order 5
	*/
	public void function testModulus2(){
		var myNum = 5;

		assertEquals(__,myNum mod 2);
	}

	/**
	*@order 6
	*/
	public void function testIncrementingAVar(){
		var myNum = 4;

		//take a second to think about this one
		myNum = addOne(myNum++);

		assertEquals(__,myNum);
		//if you are not sure what happened read this blog post by Ben Nadal http://bit.ly/tsDWYe
	}

	private numeric function addOne(numeric myNum){
		return myNum + 1;
	}
}

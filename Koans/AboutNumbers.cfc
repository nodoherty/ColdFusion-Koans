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
		assertEquals(__,precisionEvaluate(a+b));
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

	/**
	*@order 7
	*/
	private numeric function addOne(numeric myNum){
		return myNum + 1;
	}
	
	/**
	 *@order 8
	 */
	public void function testAbs(){
		
		// Use the Abs() function to return the absolute value of a number without its sign.
		// Returns : The absolute value of a number.
		// Note    : For more details see: http://tinyurl.com/cuy5rgj
		// Usage   : Abs(number)

		var testNumber = -100;

		assertEquals(__, abs(testNumber));
	}
	
	/**
	 *@order 9
	 */
	public void function testAbsWithFloatingPoint(){
		
		// Use the Abs() function to return the absolute value of a number without its sign.
		// Returns : The absolute value of a number.
		// Note    : For more details see: http://tinyurl.com/cuy5rgj
		// Usage   : Abs(number)

		var testNumber = -123.12;

		assertEquals(__, abs(testNumber));
	}
	
	/**
	 *@order 10
	 */
	public void function testAbsWithExponential(){
		
		// Use the Abs() function to return the absolute value of a number without its sign.
		// Returns : The absolute value of a number.
		// Note    : For more details see: http://tinyurl.com/cuy5rgj
		// Usage   : Abs(number)

		var testNumber = -1234.E-10;

		assertEquals(__, abs(testNumber));
	}
	
	/**
	 *@order 11
	 */
	public void function testAcosNegative(){
		
		// Use the Acos() or Arccosine function is used to obtain the the angle whose cosine is number.
		// Returns : The arccosine, in radians, of a number.
		// Note    : For more details see: http://tinyurl.com/c9rq5uy
		// Usage   : ACos(number)

		var testNumber = -0.01;

		assertEquals(__, aCos(testNumber));
	}
	
	/**
	 *@order 12
	 */
	public void function testAcosPositive(){
		
		// Use the Acos() or Arccosine function is used to obtain the the angle whose cosine is number.
		// Returns : The arccosine, in radians, of a number.
		// Note    : For more details see: http://tinyurl.com/c9rq5uy
		// Usage   : ACos(number)

		var testNumber = 1.0;

		assertEquals(__, aCos(testNumber));
	}
	
	/**
	 *@order 13
	 */
	public void function testAcosZero(){
		
		// Use the Acos() or Arccosine function is used to obtain the the angle whose cosine is number.
		// Returns : The arccosine, in radians, of a number.
		// Note    : For more details see: http://tinyurl.com/c9rq5uy
		// Usage   : ACos(number)

		var testNumber = 0.0;

		assertEquals(__, aCos(testNumber));
	}
	
	/**
	 *@order 14
	 */
	public void function testAsin(){
		
		// Use the Asin() to determine the arcsine of a number. The arcsine is the angle whose sine is number.
		// Returns : The arcsine, in radians, of a number.
		// Note    : For more details see: http://tinyurl.com/bqw2j7d
		// Usage   : ASin(number)

		var testNumber = 1;

		assertEquals(__, aSin(testNumber));
	}
	
	/**
	 *@order 15
	 */
	public void function testAsinNegative(){
		
		// Use the Asin() to determine the arcsine of a number. The arcsine is the angle whose sine is number.
		// Returns : The arcsine, in radians, of a number.
		// Note    : For more details see: http://tinyurl.com/bqw2j7d
		// Usage   : ASin(number)

		var testNumber = -1;

		assertEquals(__, aSin(testNumber));
	}
	
	/**
	 *@order 16
	 */
	public void function testAsinZero(){
		
		// Use the Asin() to determine the arcsine of a number. The arcsine is the angle whose sine is number.
		// Returns : The arcsine, in radians, of a number.
		// Note    : For more details see: http://tinyurl.com/bqw2j7d
		// Usage   : ASin(number)

		var testNumber = 0;

		assertEquals(__, aSin(testNumber));
	}

	/**
	 *@order 17
	 */
	public void function testAtn(){
		
		// Use the Atn() or Arctangent function.  The arctangent is the angle whose tangent is number.
		// Returns : The arctangent, in radians, of a number.
		// Note    : For more details see: http://tinyurl.com/d8g8qlz
		// Usage   : Atn(number)

		var testNumber = 12;

		assertEquals(__, atn(testNumber));
	}
	
	/**
	 *@order 18
	 */
	public void function testAtnZero(){
		
		// Use the Atn() or Arctangent function.  The arctangent is the angle whose tangent is number.
		// Returns : The arctangent, in radians, of a number.
		// Note    : For more details see: http://tinyurl.com/d8g8qlz
		// Usage   : Atn(number)

		var testNumber = 0;

		assertEquals(__, atn(testNumber));
	}
	
	/**
	 *@order 19
	 */
	public void function testAtnNegative(){
		
		// Use the Atn() or Arctangent function.  The arctangent is the angle whose tangent is number.
		// Returns : The arctangent, in radians, of a number.
		// Note    : For more details see: http://tinyurl.com/d8g8qlz
		// Usage   : Atn(number)

		var testNumber = -120;

		assertEquals(__, atn(testNumber));
	}
	
	/**
	 *@order 20
	 */
	public void function testCeiling(){
		
		// Use the Ceiling() function to determine the closest integer that is greater than a specified number.
		// Returns : The closest integer that is greater than a given number.
		// Note    : For more details see: http://tinyurl.com/d8g8qlz
		// Usage   : Ceiling(number)

		var testNumber = 19.1;

		assertEquals(__, ceiling(testNumber));
	}
	
	/**
	 *@order 21
	 */
	public void function testCeilingBelow(){
		
		// Use the Ceiling() function to determine the closest integer that is greater than a specified number.
		// Returns : The closest integer that is greater than a given number.
		// Note    : For more details see: http://tinyurl.com/d8g8qlz
		// Usage   : Ceiling(number)

		var testNumber = 18.99;

		assertEquals(__, ceiling(testNumber));
	}
	
	/**
	 *@order 22
	 */
	public void function testCosPositive(){
		
		// Use the Cos() function to calculate the cosine of an angle that is entered in radians.
		// Returns : A number; the cosine of the angle.
		// Note    : For more details see: http://tinyurl.com/cty67qt
		// Usage   : Cos(number)

		var testNumber = 99.99;

		assertEquals(__, cos(testNumber));
	}
	
	/**
	 *@order 23
	 */
	public void function testCosNegative(){
		
		// Use the Cos() function to calculate the cosine of an angle that is entered in radians.
		// Returns : A number; the cosine of the angle.
		// Note    : For more details see: http://tinyurl.com/cty67qt
		// Usage   : Cos(number)

		var testNumber = -99.99;

		assertEquals(__, cos(testNumber));
	}
	
	/**
	 *@order 24
	 */
	public void function testDecrementValuePositiveInteger(){
		
		// Use the DecrementValue() function to decrement the integer part of a number.
		// Returns : Integer part of number, decremented by one.
		// Note    : For more details see: http://tinyurl.com/c8trg2g
		// Usage   : DecrementValue(number)

		var testValue1 = 10;
		var testValue2 = decrementValue(testValue1);

		assertEquals(__, testValue2);
	}
	
	/**
	 *@order 25
	 */
	public void function testDecrementValueNegativeInteger(){
		
		// Use the DecrementValue() function to decrement the integer part of a number.
		// Returns : Integer part of number, decremented by one.
		// Note    : For more details see: http://tinyurl.com/c8trg2g
		// Usage   : DecrementValue(number)

		var testValue1 = -10;
		var testValue2 = decrementValue(testValue1);

		assertEquals(__, testValue2);
	}
	
	/**
	 *@order 26
	 */
	public void function testDecrementValuePositiveFloatingPoint(){
		
		// Use the DecrementValue() function to decrement the integer part of a number.
		// Returns : Integer part of number, decremented by one.
		// Note    : For more details see: http://tinyurl.com/c8trg2g
		// Usage   : DecrementValue(number)

		var testValue1 = 10.85;
		var testValue2 = decrementValue(testValue1);

		assertEquals(__, testValue2);
	}
	
	/**
	 *@order 27
	 */
	public void function testDecrementValueNegativeFloatingPoint(){
		
		// Use the DecrementValue() function to decrement the integer part of a number.
		// Returns : Integer part of number, decremented by one.
		// Note    : For more details see: http://tinyurl.com/c8trg2g
		// Usage   : DecrementValue(number)

		var testValue1 = -10.85;
		var testValue2 = iecrementValue(testValue1);

		assertEquals(__, testValue2);
	}
	
	/**
	 *@order 28
	 */
	public void function testIncrementValuePositiveInteger(){
		
		// Use the IncrementValue() function to add one to an integer.
		// Returns : Integer part of number, decremented by one.
		// Note    : For more details see: http://tinyurl.com/cfs3uf7
		// Usage   : IncrementValue(number)

		var testValue1 = 10;
		var testValue2 = incrementValue(testValue1);

		assertEquals(__, testValue2);
	}
	
	/**
	 *@order 29
	 */
	public void function testIncrementValueNegativeInteger(){
		
		// Use the IncrementValue() function to add one to an integer.
		// Returns : Integer part of number, decremented by one.
		// Note    : For more details see: http://tinyurl.com/cfs3uf7
		// Usage   : IncrementValue(number)

		var testValue1 = -10;
		var testValue2 = incrementValue(testValue1);

		assertEquals(__, testValue2);
	}
	
	/**
	 *@order 30
	 */
	public void function testIncrementValuePositiveFloatingPoint(){
		
		// Use the IncrementValue() function to add one to an integer.
		// Returns : Integer part of number, decremented by one.
		// Note    : For more details see: http://tinyurl.com/cfs3uf7
		// Usage   : IncrementValue(number)

		var testValue1 = 10.45;
		var testValue2 = incrementValue(testValue1);

		assertEquals(__, testValue2);
	}
	
	/**
	 *@order 31
	 */
	public void function testIncrementValueNegativeFloatingPoint(){
		
		// Use the IncrementValue() function to add one to an integer.
		// Returns : Integer part of number, decremented by one.
		// Note    : For more details see: http://tinyurl.com/cfs3uf7
		// Usage   : IncrementValue(number)

		var testValue1 = -10.45;
		var testValue2 = incrementValue(testValue1);

		assertEquals(__, testValue2);
	}
}

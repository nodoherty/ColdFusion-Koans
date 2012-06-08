/**
* @mxunit:decorators mxunit.framework.decorators.OrderedTestDecorator
*/
component extends="Koans.BaseKoan"{

	/**
	*@order 1
	*/
	public void function testGettingAndFormattingCurrentTime(){
		var myDate = NOW();
		
		assertEquals(__,dateFormat(myDate,"mm/dd/yyyy"));
	}

	/**
	*@order 2
	*/
	public void function testAddingToDate(){
		var myDate = NOW();

		myDate = dateAdd("d",7,myDate);

		assertEquals(__,dateFormat(myDate,"mm/dd/yyyy"));
	}

	/**
	*@order 3
	*/
	public void function testSubtractingDates(){
		var myDate1 = NOW();
		var myDate2 = dateAdd("d",7,myDate1);

		//you can quickly compare dates by performing simple math on them
		assertEquals(__,myDate1 - myDate2);
	}

	/**
	*@order 4
	*/
	public void function testComparingDates(){
		var myDate1 = NOW();
		var myDate2 = dateAdd("d",26,myDate1);

		var diff = dateDiff("ww",myDate1,myDate2);
		//will the dateDiff round up or down?
		assertEquals(__,diff);
	}

	/**
	*@order 5
	*/
	public void function testLoopingThroughDates(){
		var i = "";
		var now = NOW();
		var myDate = "";

		for(i = now();i<dateAdd("d",5,now);i = i + 1){
			//do somethign to each date in here, how cool is this?
		}
		
		//another thing to note here is that i is function scoped, not block scoped in the loop like in some languages
		assertEquals(__,dateFormat(i,"mm/dd/yyyy"));
	}

	/**
	*@order 6
	*/
	public void function testWorkingWithDates(){
		
		myDate = parseDateTime("01/01/77");		
		assertEquals(__,isDate(myDate));

		myDate = parseDateTime("01.01.77");		
		assertEquals(__,isDate(myDate));

		var myDate = parseDateTime("January 1, 1977");		
		assertEquals(__,isDate(myDate));

		var myDate = parseDateTime("Wednesday, October 25, 2011");		
		assertEquals(__,isDate(myDate));	
	}

	/**
	*@order 7
	*/
	public void function testMonthAsString(){
		
		// Use the monthAsString() function to return the name of a specified month by passing a number
		// Usage: monthAsString(monthNumber)
		// Reference: http://help.adobe.com/en_US/ColdFusion/9.0/CFMLRef/WSc3ff6d0ea77859461172e0811cbec22c24-7ee4.html

		// Let's say your birthday is in March. The numbers work out like this:
		// January = 1, February = 2, etc.
		var myBirthdayMonth = 3;

		assertEquals(__,monthAsString(myBirthdayMonth));

	}
	/**
	*@order 8
	*/
	public void function testDayOfWeek(){
		
		// Use the dayOfWeek() function to determine the day of the week, in a date.
		// Returns   : The ordinal for the day of the week, as an integer in the range 1 (Sunday) to 7 (Saturday).
		// Usage     : monthAsString(monthNumber)
		// Reference : http://tinyurl.com/cbargfj

		var testDate   = Now();

		// Hint: This will fail on a daily basis
		assertEquals(__,dayOfWeek(testDate));

	}
}
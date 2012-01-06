component extends="mxunit.framework.TestCase"{
	public void function testGettingAndFormattingCurrentTime(){
		var myDate = NOW();
		
		assertEquals(dateFormat(myDate,"mm/dd/yyyy"),"__");
	}

	public void function testAddingToDate(){
		var myDate = NOW();

		myDate = dateAdd("d",7,myDate);

		assertEquals(dateFormat(myDate,"mm/dd/yyyy"),"__");
	}

	public void function testSubtractingDates(){
		var myDate1 = NOW();
		var myDate2 = dateAdd("d",7,myDate1);

		//you can quickly compare dates by performing simple math on them
		assertEquals(myDate1 - myDate2,"__");
	}

	public void function testComparingDates(){
		var myDate1 = NOW();
		var myDate2 = dateAdd("d",26,myDate1);

		var diff = dateDiff("ww",myDate1,myDate2);
		//will the dateDiff round up or down?
		assertEquals(diff,"__");
	}

	public void function testLoopingThroughDates(){
		var i = "";
		var now = NOW();
		var myDate = "";

		for(i = now();i<dateAdd("d",5,now);i = i + 1){
			//do somethign to each date in here, how cool is this?
		}
		
		//another thing to note here is that i is function scoped, not block scoped in the loop like in some languages
		assertEquals(dateFormat(i,"mm/dd/yyyy"),"__");
	}

	public void function testWorkingWithDates(){
		
		myDate = parseDateTime("01/01/77");		
		assertEquals(isDate(myDate),"__");

		myDate = parseDateTime("01.01.77");		
		assertEquals(isDate(myDate),"__");

		var myDate = parseDateTime("January 1, 1977");		
		assertEquals(isDate(myDate),"__");

		var myDate = parseDateTime("Wednesday, October 25, 2011");		
		assertEquals(isDate(myDate),"__");	
	}
}
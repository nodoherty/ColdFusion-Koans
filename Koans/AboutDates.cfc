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
	
	/**
	 *@order 9
	 */
	public void function testCreateDate() {
		
		// Use the createDate() function to create a date variable (with a time of 12am).
		// Returns : A date variable
		// Note    : For more details see: http://tinyurl.com/7rcleyc
		// Usage   : createDate(year, month, day)	
			
		var myDate= createDate(2012,7,7);
		
		assertEquals(__,dateFormat(myDate,"mm/dd/yyyy"));
		assertEquals(__,isDate(myDate));
	}
	
	/**
	 *@order 10
	 */
	public void function testDateFormatWithPredefinedMask() {
		
		// Use the dateFormat() function to return the date in a date/timestamp object in a particular format.
		// Returns : A string
		// Note    : For more details see: http://tinyurl.com/63699rw
		// Usage   : dateFormat(time [, mask])	
			
		var myDate= createDate(2012,7,7);
		
		assertEquals(__,dateFormat(myDate,"short"));
	}
	
	/**
	 *@order 11
	 */
	public void function testDateFormatWithCustomMask() {
		
		// Use the dateFormat() function to return the date in a date/timestamp object in a particular format.
		// Returns : A string
		// Note    : For more details see: http://tinyurl.com/63699rw
		// Usage   : dateFormat(time [, mask])	
			
		var myDate= createDate(2012,7,7);
		
		assertEquals(__,dateFormat(myDate,"yyyy-mm-dd"));
	}
	
	
	/**
	 *@order 12
	 */
	public void function testCreateDateTime() {
		
		// Use the createDateTime() function to create a timestamp with a specific date and time.
		// Returns : A date variable that can be stored in the database as a timestamp
		// Note    : For more details see: http://tinyurl.com/6m22xux
		// Usage   : createDateTime(year, month, day, hour, minute, second)	
			
		var myTime= createDateTime(2012,7,7,0,9,35);
		
		assertEquals(__,timeFormat(myTime));
		assertEquals(__,isDate(myTime));
		//Hint: Because it is a date variable, you can get the date from the variable as well.
		assertEquals(__,dateFormat(myTime,"mm/dd/yyyy"));
	}
	
	/**
	 *@order 13
	 */
	public void function testTimeFormatWithPredefinedMask() {
		
		// Use the timeFormat() function to return the time in a date/timestamp object in a particular format.
		// Returns : A string
		// Note    : For more details see: http://tinyurl.com/6wyw4d6
		// Usage   : timeFormat(time [, mask])	
			
		var myTime= createDateTime(2012,7,7,0,9,35);
		
		assertEquals(__,timeFormat(myTime,"short"));
	}
	
	/**
	 *@order 14
	 */
	public void function testTimeFormatWithCustomMask() {
		
		// Use the timeFormat() function to return the time in a date/timestamp object in a particular format.
		// Returns : A string
		// Note    : For more details see: http://tinyurl.com/6wyw4d6
		// Usage   : timeFormat(time [, mask])	
			
		var myTime= createDateTime(2012,7,7,0,9,35);
		
		assertEquals(__,timeFormat(myTime,"hh:mm:ss tt"));
	}
	
	
	/**
	 *@order 15
	 */
	public void function testDatePart() {
		
		// Use the datePart() function to retrieve a particular value (month, day, etc) of a date variable.
		// Returns : An integer
		// Note    : For more details see: http://tinyurl.com/bn5dl3z
		// Usage   : datePart(datepart, date)
			
		var myDateTime= createDateTime(2012,7,7,0,9,35);
		
		assertEquals(__,DatePart("m",myDateTime));
		assertEquals(__,DatePart("n",myDateTime));
	}
}
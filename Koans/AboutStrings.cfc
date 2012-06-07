/**
* @mxunit:decorators mxunit.framework.decorators.OrderedTestDecorator
*/
component extends="Koans.BaseKoan"{

	/**
	*@order 1
	*/
	public void function testGettingStringLength(){
		
		// Use the len() function to return the length of a string or binary object
		// For now, we'll work with a simple string
		// Usage: len(string)
		
		var myVar = "apple";

		assertEquals(__,len(myVar));
		
	}

	/**
	*@order 2
	*/
	public void function testRepeatingString(){
		
		// Use the repeatString() function to repeat a string
		// Usage: repeatString(string, count)

		var myVar = "Ho! "; // Notice the trailing space

		assertEquals(__,repeatString(myVar, 3));

	}

	/**
	*@order 3
	*/
	public void function testReversingString(){
		
		// Use the reverse() function to reverse a string
		// Usage: reverse(string)

		var myVar = "otatop";

		assertEquals(__,reverse(myVar)); // Hint: spuds

	}

	/**
	*@order 4
	*/
	public void function testGettingStringContentFromLeft(){
		
		// Use the left() function to return a specified number of characters from a string, beginning at the left.
		// Usage: left(string, count)

		var myVar = "peanut";
		
		assertEquals(__,left(myVar, 3) );

	}

	/**
	*@order 5
	*/
	public void function testGettingStringContentFromRight(){

		// Use the right() function to return a specified number of characters from a string, beginning at the right.
		// Usage: right(string, count)

		var myVar = "peanut";
		
		assertEquals(__,right(myVar, 3) );

	}

	/**
	*@order 6
	*/
	public void function testGettingSubString(){
		
		// Use the mid() function to extract a substring from a string
		// Usage: mid(string, start, count)

		var goodActor = "Chevy Chase";

		// Hint: Good automobile maker
		assertEquals(__,mid(goodActor, 1, 5)); 
	}

	/**
	*@order 7
	*/
	public void function testAddingStringAndNumber(){
		//string concatanation in ColdFusion is done with the & sign
		var myVar = 1 & "Hello";
		assertEquals(__,myVar);
	}	

	/**
	*@order 8
	*/
	public void function testRemovingWhiteSpace(){
		var myVar = "  hello world!  ";

		assertEquals(__,trim(myVar));
	}
	
	/**
	*@order 9
	*/
	public void function testRemovingLeadingSpaces() {

		// Use the lTrim() function to removes spaces from the beginning of a string
		// Usage: lTrim(string)

		var myVar = "  hello world!  ";		

		assertEquals(__,lTrim(myVar));
	}

	/**
	*@order 10
	*/
	public void function testRemovingTrailingSpaces() {

		// Use the rTrim() function to removes spaces from the end of a string
		// Usage: rTrim(string)

		var myVar = "  hello world!  ";		

		assertEquals(__,rTrim(myVar));

	}

	/**
	*@order 11
	*/
	public void function testRemovingChars(){
		
		// Use the removeChars() function to remove characters from a string
		// Usage: removeChars(string, start, count)

		var greatMoviePlot = "Marty and the Doc go back to the future";

		// Hint: another great movie plot.

		assertEquals(__,removeChars(greatMoviePlot, 21, 5));

	}

	/**
	*@order 12
	*/
	public void function testSearchingString(){
		var myVar = "To start press any key. Where's the any key?";

		assertEquals(__,findNoCase("ANY",myVar));
	}

	/**
	*@order 13
	*/
	public void function testSearchingString2(){
		var myVar = "To start press any key. Where's the any key?";

		assertEquals(__,findNoCase("ANY",myVar,26));
	}

	/**
	*@order 14
	*/
	public void function testSearchingString3(){
		// Note    : For more details see: http://tinyurl.com/cjsdlf2
		// Usage   : Find(substring, string [, start ])
		var myVar = "To start press any key. Where's the any key?";

		assertEquals(__,find("ANY",myVar,26));
	}

	/**
	*@order 15
	*/
	public void function testStringReplace(){
		var myVar = "To start press any key. Where's the any key?";

		assertEquals(__,replace(myVar,"any","pound"));
	}

	/**
	*@order 16
	*/
	public void function testStringReplace2(){
		var myVar = "To start press any key. Where's the any key?";

		//Did that last test get you?  To replace all occurances you need to pass another argument to find
		assertEquals(__,replace(myVar,"any","pound","all"));
	}

	/**
	*@order 17
	*/
	public void function testSpanExcluding(){
		
		// Use the spanExcluding() function to gets characters from a string, starting from the beginning and stopping when it encounters any of the specified characters
		// Note: The search is case sensitive. 
		// Usage: spanExcluding(string, set)

		var martySays = "Yeah well Biff, you're forgetting one thing. What the heck is that!!?";
		// Hint: Watch out for trailing spaces

		assertEquals(__,spanExcluding(martySays, "W"));

	}

	/**
	*@order 18
	*/
	public void function testSpanIncluding(){
		
		// Use the spanIncluding() function to get characters from a string, from the beginning and stopping when it encounters any character that IS NOT in the specified character set. 
		// Note: The search is case sensitive. 
		// Usage: spanIncluding(string, set)

		var martySays = "This is heavy.";

		// Hint: If letters could talk, one might say this.

		assertEquals(__, spanIncluding(martySays, "This "));

	}

	/**
	*@order 19
	*/
	public void function testAscToDetermineUCS2ValueOfCharacter(){
		
		// Use the Asc() function to determine the UCS-2 value of a character.
		// Returns: The value of the first character of a string; if string is empty, returns zero. 
		// Note: For more details on UCS-2 character encoding please visit http://tinyurl.com/ckuxlyq.
		// Usage: Asc(string)

		// Hint: It's alphanumeric without the alpha

		assertEquals(__, asc("A"));
	}
	
	
	/**
	*@order 20
	*/
	public void function testChrToDetermineCharacterOfUCS2Value(){
		
		// Use the Chr() function to determine the corresponding character of a UCS-2 value.
		// Returns: A character with the specified UCS-2 character code.
		// Note: For more details on UCS-2 character encoding please visit http://tinyurl.com/ckuxlyq. 
		// Usage: Chr(number)

		// Hint: It's one of the 26 LOTA

		assertEquals(__, chr(65));
	}
	
	
	/**
	*@order 21
	*/
	public void function testCJustify(){
		
		// Use the CJustify() function to center a string in a field length.
		// Returns: String, center-justified by adding spaces before or after the input parameter. If length is less than the length of the input parameter string, the string is returned unchanged.
		// Usage: Cjustify(string, length)

		var inputLength   = 35;
		var inputString   = "centered";
		var justifyString = Cjustify(inputString, inputLength);

		// Hint: Fill in the gaps
		assertEquals(__, justifyString);
	}
	
	
	/**
	*@order 22
	*/
	public void function testCJustifyLength(){
		
		// Use the CJustify() function to center a string in a field length.
		// Returns: String, center-justified by adding spaces before or after the input parameter. If length is less than the length of the input parameter string, the string is returned unchanged.
		// Usage: Cjustify(string, length)

		var inputLength   = 35;
		var inputString   = "centered";
		var justifyString = Cjustify(inputString, inputLength);

		// Hint: Spacing included
		assertEquals(__, len(justifyString));
	}
	
	
	/**
	*@order 23
	*/
	public void function testCompareEqualStrings(){
		
		// Use the Compare() function to perform a case sensitive comparison of two strings.
		// Returns: -1, if string1 is less than string2
		//           0, if string1 is equal to string2
		//           1, if string1 is greater than string2
		// Note:  
		// Usage: Compare(string1, string2)

		var string1   = "Equal";
		var string2   = "Equal";

		// Hint: There is no difference in these strings
		assertEquals(__, Compare(string1, string2));
	}
	
	
	/**
	*@order 24
	*/
	public void function testCompareUnequalStrings(){
		
		// Use the Compare() function to perform a case sensitive comparison of two strings.
		// Returns: -1, if string1 is less than string2
		//           0, if string1 is equal to string2
		//           1, if string1 is greater than string2
		// Note:  
		// Usage: Compare(string1, string2)

		var string1   = "Equal";
		var string2   = "equaL";

		// Hint: There is no difference in these strings
		assertEquals(__, Compare(string1, string2));
	}
	
	
	/**
	*@order 25
	*/
	public void function testCompareUnequalStringsLower(){
		
		// Use the Compare() function to perform a case sensitive comparison of two strings.
		// Returns: -1, if string1 is less than string2
		//           0, if string1 is equal to string2
		//           1, if string1 is greater than string2
		// Note:  
		// Usage: Compare(string1, string2)

		var string1   = "Equal";
		var string2   = "Unequal";

		// Hint: These string are not equal in order
		assertEquals(__, Compare(string1, string2));
	}
	
	
	/**
	*@order 26
	*/
	public void function testCompareUnequalStringsHigher(){
		
		// Use the Compare() function to perform a case sensitive comparison of two strings.
		// Returns : -1, if string1 is less than string2
		//            0, if string1 is equal to string2
		//            1, if string1 is greater than string2
		// Note    :  
		// Usage   : Compare(string1, string2)

		var string1   = "Unequal";
		var string2   = "Equal";

		// Hint    : These string are not equal in order
		assertEquals(__, Compare(string1, string2));
	}
	
	
	/**
	*@order 27
	*/
	public void function testCompareNoCaseEqualStrings(){
		
		// Use the CompareNoCase() function to perform a case insensitive comparison of two strings.
		// Returns: -1, if string1 is less than string2
		//           0, if string1 is equal to string2
		//           1, if string1 is greater than string2
		// Note:  
		// Usage: Compare(string1, string2)

		var string1   = "EqUaL";
		var string2   = "eQuAl";

		// Hint: There is no difference in these strings, aside from their case
		assertEquals(__, CompareNoCase(string1, string2));
	}
	
	
	/**
	*@order 28
	*/
	public void function testCompareNoCaseUnequalStrings(){
		
		// Use the CompareNoCase() function to perform a case insensitive comparison of two strings.
		// Returns: -1, if string1 is less than string2
		//           0, if string1 is equal to string2
		//           1, if string1 is greater than string2
		// Note:  
		// Usage: Compare(string1, string2)

		var string1   = "Equal";
		var string2   = "equally equal";

		// Hint: There is a difference in these strings
		assertEquals(__, CompareNoCase(string1, string2));
	}
	
	
	/**
	*@order 29
	*/
	public void function testCompareNoCaseUnequalStringsLower(){
		
		// Use the CompareNoCase() function to perform a case insensitive comparison of two strings.
		// Returns: -1, if string1 is less than string2
		//           0, if string1 is equal to string2
		//           1, if string1 is greater than string2
		// Note:  
		// Usage: Compare(string1, string2)

		var string1   = "Equal";
		var string2   = "sequally equal";

		// Hint: What comes first E or s?
		assertEquals(__, CompareNoCase(string1, string2));
	}
	
	
	/**
	*@order 30
	*/
	public void function testCompareNoCaseUnequalStringsHigher(){
		
		// Use the CompareNoCase() function to perform a case insensitive comparison of two strings.
		// Returns: -1, if string1 is less than string2
		//           0, if string1 is equal to string2
		//           1, if string1 is greater than string2
		// Note:  
		// Usage: Compare(string1, string2)

		var string1   = "sequally equal";
		var string2   = "Equal";

		// Hint: Notice the order...?
		assertEquals(__, CompareNoCase(string1, string2));
	}
	
	
	/**
	*@order 31
	*/
	public void function testDayOfWeekAsStringDefaultLocale(){
		
		// Use the DayOfWeekAsString() function to determine the day of the week, in a date, as a string function.
		// Returns: The day of the week, as a string in the current locale, that corresponds to day_of_week.
		// Note:  For more details on local specifics in ColdFusion see: http://tinyurl.com/75l9lc3
		//        See also AboutDates.cfc
		// Usage: DayOfWeekAsString(day_of_week [, locale])

		var testDate   = Now();
		var testDay    = DayOfWeek(testDate);

		// Hint: This will continually fail, but it's English
		assertEquals(__, DayOfWeekAsString(DayOfWeek(testDay)));
	}
	
	
	/**
	*@order 32
	*/
	public void function testDayOfWeekAsStringWithSpanishLocale(){
		
		// Use the DayOfWeekAsString() function to determine the day of the week, in a date, as a string function.
		// Returns: The day of the week, as a string in the current locale, that corresponds to day_of_week.
		// Note:  For more details on local specifics in ColdFusion see: http://tinyurl.com/75l9lc3
		//        See also AboutDates.cfc
		// Usage: DayOfWeekAsString(day_of_week [, locale])

		var testDate   = Now();

		// Hint: Hola, this will continuously fail
		assertEquals(__, DayOfWeekAsString(DayOfWeek(testDate), "es"));
	}
	
	
	/**
	*@order 33
	*/
	public void function testDayOfWeekAsStringWithFixedDay(){
		
		// Use the DayOfWeekAsString() function to determine the day of the week, in a date, as a string function.
		// Returns: The day of the week, as a string in the current locale, that corresponds to day_of_week.
		// Note:  For more details on local specifics in ColdFusion see: http://tinyurl.com/75l9lc3
		//        See also AboutDates.cfc
		// Usage: DayOfWeekAsString(day_of_week [, locale])

		var testDayAsNumber = 2;

		// Hint: Everyones favourite day...but what's up with the number?
		assertEquals(__, DayOfWeekAsString( testDayAsNumber ));
	}
	
	
	/**
	 *@order 34
	 */
	public void function testFindOneOf(){
		
		// Use the FindOneOf() function to find the first occurrence of any one of a set of characters in a string, from a specified start position. The search is case sensitive.
		// Returns : The position of the first member of set found in string; or 0, if no member of set is found in string.
		// Note    : For more details see: http://tinyurl.com/dyxqylg
		// Usage   : FindOneOf(set, string [, start ])

		var testSet    = "aeiou";
		var testString = "The quick brown fox jumped over the lazy dog";

		// Hint: It's in "The" answer
		assertEquals(__, FindOneOf( testSet, testString, 1 ));
	}
	
	
	/**
	 *@order 35
	 */
	public void function testFindOneOfAgain(){
		
		// Use the FindOneOf() function to find the first occurrence of any one of a set of characters in a string, from a specified start position. The search is case sensitive.
		// Returns : The position of the first member of set found in string; or 0, if no member of set is found in string.
		// Note    : For more details see: http://tinyurl.com/dyxqylg
		// Usage   : FindOneOf(set, string [, start ])

		var testSet    = "aeiou";
		var testString = "Hmmm quick brown foxes jumping over lazy dogs";

		// Hint: It's further up the chain this time
		assertEquals(__, FindOneOf( testSet, testString, 1 ));
	}
	
	
	/**
	 *@order 36
	 */
	public void function testInsertEnd(){
		
		// Use the Insert() function to insert a substring in a string after a specified character position. If position=0, prefixes the substring to the string.
		// Returns : A string.
		// Note    : For more details see: http://tinyurl.com/cwo3olq
		// Usage   : Insert(substring, string, position)

		var testSubString = " asleep in the garden ";
		var testString    = "The quick brown fox jumped over the lazy dog";
		var testPosition  = len(testString);

		// Hint: The end - notice the case of the text?
		assertEquals(__, Insert( testSubString, testString, testPosition ));
	}
	
	
	/**
	 *@order 37
	 */
	public void function testInsertBeginning(){
		
		// Use the Insert() function to insert a substring in a string after a specified character position. If position=0, prefixes the substring to the string.
		// Returns : A string.
		// Note    : For more details see: http://tinyurl.com/cwo3olq
		// Usage   : Insert(substring, string, position)

		var testSubString = " Asleep in the garden ";
		var testString    = "the quick brown fox jumped over the lazy dog";
		var testPosition  = 0;

		// Hint: The begining - notice the case of the text?
		assertEquals(__, Insert( testSubString, testString, testPosition ));
	}
	
	
	/**
	 *@order 38
	 */
	public void function testInsertMiddle(){
		
		// Use the Insert() function to insert a substring in a string after a specified character position. If position=0, prefixes the substring to the string.
		// Returns : A string.
		// Note    : For more details see: http://tinyurl.com/cwo3olq
		// Usage   : Insert(substring, string, position)

		var testSubString = " asleep in the garden ";
		var testString    = "The quick brown fox jumped over the lazy dog.  How'd that happen?";
		var testPosition  = 19;

		// Hint: The middle - notice the case of the text?
		assertEquals(__, Insert( testSubString, testString, testPosition ));
	}
	
	
	/**
	 *@order 39
	 */
	public void function testLCase(){
		
		// Use the LCase() function to convert the alphabetic characters in a string to lowercase.
		// Returns : A string, converted to lowercase.
		// Note    : For more details see: http://tinyurl.com/cx3kz4l
		// Usage   : LCase(string)

		var testString    = "EASY PEASY...";

		// Hint: Method name speaks for itself
		assertEquals(__, LCase( testString));
	}
	
	
	/**
	 *@order 40
	 */
	public void function testLCaseWithNumbers(){
		
		// Use the LCase() function to convert the alphabetic characters in a string to lowercase.
		// Returns : A string, converted to lowercase.
		// Note    : For more details see: http://tinyurl.com/cx3kz4l
		// Usage   : LCase(string)

		var testString    = "ABC easy AS 123...";

		// Hint: Method name speaks for itself
		assertEquals(__, LCase( testString));
	}
	
	
	/**
	 *@order 41
	 */
	public void function testUCase(){
		
		// Use the UCase() function to convert the alphabetic characters in a string to uppercase.
		// Returns : A string, converted to uppercase.
		// Note    : For more details see: http://tinyurl.com/bwzaxfo
		// Usage   : UCase(string)

		var testString    = "abc easy as pie...";

		// Hint: Method name speaks for itself
		assertEquals(__, UCase( testString));
	}
	
	
	/**
	 *@order 42
	 */
	public void function testUCaseWithNumbers(){
		
		// Use the UCase() function to convert the alphabetic characters in a string to uppercase.
		// Returns : A string, converted to uppercase.
		// Note    : For more details see: http://tinyurl.com/bwzaxfo
		// Usage   : UCase(string)

		var testString    = "abc easy as 123...!!!";

		// Hint: Method name speaks for itself
		assertEquals(__, UCase( testString));
	}
	 
}
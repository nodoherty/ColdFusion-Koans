/**
* @mxunit:decorators mxunit.framework.decorators.OrderedTestDecorator,mxunit.framework.decorators.MinimumVersionDecorator
*/
component extends="Koans.BaseKoan"{
	
	/**
	*@order 1
	*/
	public void function testListWithNonStandardDelimiters(){
	    var myList = "apple_pear_banana_grape";
	    //passing a delminiter for a 3rd parameter into listgetadd lets just about any string act as a list
	    //this can be extremely helpful when dealing with dynamic forms
		var result = listGetAt(myList,2,"_");	    

	    assertEquals(__,result);
	}

	/**
	*@order 2
	*/
	public void function testChangingAListDelimiter(){

		// Use the listChangeDelims() function to change a list delimiter.
		// Returns : A copy of the list, with each delimiter character replaced by new_delimiter.
		// Note    : For more details see: http://tinyurl.com/c7hfjkk
		// Usage   : listChangeDelims(list, new_delimiter [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList = "apple_pear_banana";
		myList = listChangeDelims(myList,",","_");

		assertEquals(__,myList);
	}

	/**
	*@order 3
	*/
	public void function testAppendingValueToAnExistingList(){
		
		// Use the listAppend() function to concatenate a list or element to a list.
		// Returns : A copy of the list, with value appended. If value = "", returns a copy of the list, unchanged.
		// Note    : For more details see: http://tinyurl.com/cyobz57
		// Usage   : listAppend(list, value [, delimiters ]) - square brackets indicate optional arguments

		var myList = "bike,car,bus,train,boat,plane";

		// Lets append "orbiter" to the list
		myList = listAppend(myList, "orbiter", ",");

		// Did it work?
		assertEquals(__,myList);
	}

	/**
	*@order 4
	*/
	public void function testInspectingListForValueThatDoesntExist(){

		// Use the listContains() function to determine the _Index_ of the first list element that contains a specified substring.
		// Returns : Index of the first list element that contains substring. If not found, returns zero.
		// Note    : For more details see: http://tinyurl.com/buqgx6l
		// Usage   : listContains(list, substring [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList    = "bike,car,bus,train,boat,plane";
		var isItThere = 0;

		// Check the list for a specified substring
		isItThere = listContains(myList, "orbiter", ",");

		// What gets returned if it DOESN'T exist?
		assertEquals(__,isItThere);
	}

	/**
	*@order 5
	*/
	public void function testInspectingListForSubStringThatExistsInTheList(){

		// Use the listContains() function to determine the _Index_ of the first list element that contains a specified substring.
		// Returns : Index of the first list element that contains substring. If not found, returns zero.
		// Note    : For more details see: http://tinyurl.com/buqgx6l
		// Usage   : listContains(list, substring [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList    = "bike,car,bus,train,boat,plane";
		var isItThere = 0;

		// Check the list for a specified substring - notice aything about the value I'm searching?
		isItThere = listContains(myList, "rain", ",");

		// What gets returned if it DOES exist?
		assertEquals(__,isItThere);
	}

	/**
	*@order 6
	*/
	public void function testInspectingListForSubStringThatExistsInTheListWithNoDelimiter(){

		// Use the listContains() function to determine the _Index_ of the first list element that contains a specified substring.
		// Returns : Index of the first list element that contains substring. If not found, returns zero.
		// Note    : For more details see: http://tinyurl.com/buqgx6l
		// Usage   : listContains(list, substring [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList    = "bike,car,bus,train,boat,plane";
		var isItThere = 0;

		// Check the list for a specified substring - without specifying a delimeter
		isItThere = listContains(myList, "us");

		// What gets returned?  Has it changed anything?
		assertEquals(__,isItThere);
	}

	/**
	*@order 7
	*/
	public void function testInspectingListForSubStringThatExistsInTheListWithNoDelimiterAndNoDefault(){

		// Use the listContains() function to determine the _Index_ of the first list element that contains a specified substring.
		// Returns : Index of the first list element that contains substring. If not found, returns zero.
		// Note    : For more details see: http://tinyurl.com/buqgx6l
		// Usage   : listContains(list, substring [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList    = "bike,car,bus,train,boat,plane";
		var isItThere = 0;

		// Change the delimeter to underscore
		myList = listChangeDelims(myList,"_",",");

		// Check the list for a specified substring - without specifying a delimeter
		isItThere = listContains(myList, "train");

		// What gets returned?  Has it changed anything?  What happened here?
		assertEquals(__,isItThere);
	}

	/**
	*@order 8
	*/
	public void function testInspectingListForSubStringWithCaseSensitivity(){

		// Use the listContains() function to determine the _Index_ of the first list element that contains a specified substring.
		// Returns : Index of the first list element that contains substring. If not found, returns zero.
		// Note    : For more details see: http://tinyurl.com/buqgx6l
		// Usage   : listContains(list, substring [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList    = "bike,car,bus,train,boat,plane";
		var isItThere = 0;

		// Check the list for a specified substring - without specifying a delimeter
		isItThere = listContains(myList, "TRAIN");

		// What gets returned now? 
		assertEquals(__,isItThere);
	}

	/**
	*@order 9
	*/
	public void function testInspectingListForValueThatIsCaseInsensitive(){

		// Use the listContainsNoCase() function to determine the index of the first list element that contains a specified substring.
		// Returns : Index of the first list element that contains substring, regardless of case. If not found, returns zero.
		// Note    : For more details see: http://tinyurl.com/cblfeqb
		// Usage   : listContainsNoCase(list, substring [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList    = "bike,car,bus,train,boat,plane";
		var isItThere = 0;

		// Check the list for a specified substring
		isItThere = listContainsNoCase(myList, "Car", ",");

		// Does this one match? What gets returned if it DOES match?
		assertEquals(__,isItThere);
	}

	/**
	*@order 10
	*/
	public void function testInspectingListForListItem(){

		// Use the listFind() function to determine the index of the first list element in which a specified value occurs. Case sensitive.
		// Returns : Index of the first list element that contains value, with matching case. If not found, returns zero.
		// Note    : For more details see: http://tinyurl.com/d86ktzg
		// Usage   : listFind(list, value [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		// WARNING : listFind() and listContains() are very similar but behave very differently...

		var myList    = "bike,car,bus,train,boat,plane";
		var isItThere = 0;

		// Check the list for a specified substring 
		isItThere = listFind(myList, "us", ",");

		// What gets returned?  Why isn't it found?
		assertEquals(__,isItThere);
	}

	/**
	*@order 11
	*/
	public void function testInspectingListForListItem2(){

		// Use the listFind() function to determine the index of the first list element in which a specified value occurs. Case sensitive.
		// Returns : Index of the first list element that contains value, with matching case. If not found, returns zero.
		// Note    : For more details see: http://tinyurl.com/d86ktzg
		// Usage   : listFind(list, value [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		// WARNING : listFind() and listContains() are very similar but behave very differently...

		var myList    = "bike,car,bus,train,boat,plane";
		var isItThere = 0;

		// Check the list for a specified substring 
		isItThere = listFind(myList, "Bus", ",");

		// What gets returned?  
		assertEquals(__,isItThere);
	}

	/**
	*@order 12
	*/
	public void function testInspectingListForListItem3(){

		// Use the listFind() function to determine the index of the first list element in which a specified value occurs. Case sensitive.
		// Returns : Index of the first list element that contains value, with matching case. If not found, returns zero.
		// Note    : For more details see: http://tinyurl.com/d86ktzg
		// Usage   : listFind(list, value [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		// WARNING : listFind() and listContains() are very similar but behave very differently...

		var myList    = "bike,car,bus,train,boat,plane";
		var isItThere = 0;

		// Check the list for a specified substring - without specifying a delimeter
		isItThere = listFind(myList, "boat", ",");

		// What gets returned?  Why was this found?
		assertEquals(__,isItThere);
	}

	/**
	*@order 13
	*/
	public void function testInspectingListForListItemCaseInsensitive(){

		// Use the listFindNoCase() function to determine the index of the first list element in which a specified value occurs. Case Insensitive.
		// Returns : Index of the first list element that contains value. If not found, returns zero. 
		// Note    : For more details see: http://tinyurl.com/cm76gzt
		// Usage   : listFindNoCase(list, value [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		// WARNING : listFindNoCase() and listContainsNoCase() are very similar but behave very differently...

		var myList    = "bike,car,bus,train,boat,plane";
		var isItThere = 0;

		// Check the list for a specified substring - without specifying a delimeter
		// Again US is in the list but why is it not matched?
		isItThere = listFindNoCase(myList, "US", ",");

		// What gets returned?  Why was this not found?
		assertEquals(__,isItThere);
	}

	/**
	*@order 14
	*/
	public void function testInspectingListForListItemCaseInsensitive2(){

		// Use the listFindNoCase() function to determine the index of the first list element in which a specified value occurs. Case Insensitive.
		// Returns : Index of the first list element that contains value. If not found, returns zero. 
		// Note    : For more details see: http://tinyurl.com/cm76gzt
		// Usage   : listFindNoCase(list, value [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		// WARNING : listFindNoCase() and listContainsNoCase() are very similar but behave very differently...

		var myList    = "bike,car,bus,train,boat,plane";
		var isItThere = 0;

		// Check the list for a specified substring - without specifying a delimeter
		isItThere = listFindNoCase(myList, "PLANE", ",");

		// What gets returned?  Why was this not found?
		assertEquals(__,isItThere);
	}

	/**
	*@order 15
	*/
	public void function testCountingValuesInAList(){

		// Use the listValueCount() function to count instances of a specified value in a list. The search is case sensitive.
		// Returns : The number of instances of a value in the list.
		// Note    : For more details see: http://tinyurl.com/d237aml
		// Usage   : listValueCount(list, value [, delimiters ]) - square brackets indicate optional arguments

		var myList     = "bike,car,bus,train,boat,plane,orbiter,satellite";
		var valueCount = 0;

		// Count the values in the list
		valueCount = listValueCount(myList, "plane", ",");

		// What gets returned?  Is it 8?
		assertEquals(__,valueCount);
	}

	/**
	*@order 16
	*/
	public void function testCountingValuesInAList2(){

		// Use the listValueCount() function to count instances of a specified value in a list. The search is case sensitive.
		// Returns : The number of instances of a value in the list.
		// Note    : For more details see: http://tinyurl.com/d237aml
		// Usage   : listValueCount(list, value [, delimiters ]) - square brackets indicate optional arguments

		var myList     = "bike,car,bus,train,boat,plane,orbiter,satellite";
		var valueCount = 0;

		// Count the values in the list
		valueCount = listValueCount(myList, "Orbiter", ",");

		// What gets returned?  Must be 1 - right?
		assertEquals(__,valueCount);
	}

	/**
	*@order 17
	*/
	public void function testCountingValuesInAListCaseInsensitive(){

		// Use the listValueCountNoCase() function to count instances of a specified value in a list. The search is case-insensitive.
		// Returns : The number of instances of value in the list.
		// Note    : For more details see: http://tinyurl.com/dxtb3pt
		// Usage   : listValueCountNoCase(list, value [, delimiters ]) - square brackets indicate optional arguments

		var myList     = "bike,car,bus,train,boat,plane,orbiter,satellite";
		var valueCount = 0;

		// Count the values in the list
		valueCount = listValueCountNoCase(myList, "Orbiter", ",");

		// What gets returned?  Must be 1 this time - right?  What's different?
		assertEquals(__,valueCount);
	}

	/**
	*@order 18
	*/
	public void function testCountingValuesInAListCaseInsensitive2(){

		// Use the listValueCountNoCase() function to count instances of a specified value in a list. The search is case-insensitive.
		// Returns : The number of instances of value in the list.
		// Note    : For more details see: http://tinyurl.com/dxtb3pt
		// Usage   : listValueCountNoCase(list, value [, delimiters ]) - square brackets indicate optional arguments

		var myList     = "bike,car,bus,plane,train,boat,plane,orbiter,satellite";
		var valueCount = 0;

		// Count the values in the list
		valueCount = listValueCountNoCase(myList, "PLANE", ",");

		// What gets returned?  Must be 0 this time - right?                   Wrong again!!
		assertEquals(__,valueCount);
	}

	/**
	*@order 19
	*/
	public void function testGettingTheFirstElementFromTheList(){

		// Use the listFirst() function to get the first element of a list.
		// Returns : The first element of a list. If the list is empty, returns an empty string.
		// Note    : For more details see: http://tinyurl.com/ckmloet
		// Usage   : listFirst(list [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList     = "bike,car,bus,plane,train,boat,plane,orbiter,satellite";
		var firstItem  = 0;

		// Get the first element in the list
		firstItem = listFirst(myList, ",");

		// What gets returned?  This is easy?
		assertEquals(__,firstItem);
	}

	/**
	*@order 20
	*/
	public void function testGettingTheFirstElementFromTheListWithBlankValueItems(){

		// Use the listFirst() function to get the first element of a list.
		// Returns : The first element of a list. If the list is empty, returns an empty string.
		// Note    : For more details see: http://tinyurl.com/ckmloet
		// Usage   : listFirst(list [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList     = ",bike,,bus,plane,train,boat,,orbiter,";
		var firstItem  = 0;

		// Get the first element in the list
		firstItem = listFirst(myList, ",");

		// What gets returned?  What happened our list?
		assertEquals(__,firstItem);
	}

	/**
	*@order 21
	*/
	public void function testGettingTheFirstElementFromTheListWithBlankValueItemsWithWhitespace(){

		// Use the listFirst() function to get the first element of a list.
		// Returns : The first element of a list. If the list is empty, returns an empty string.
		// Note    : For more details see: http://tinyurl.com/ckmloet
		// Usage   : listFirst(list [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList     = " ,bike, ,bus,plane,train,boat, ,orbiter, ";
		var firstItem  = 0;

		// Get the first element in the list
		firstItem = listFirst(myList, ",");

		// What gets returned?  Not so easy now?
		assertEquals(__,firstItem);
	}

	/**
	*@order 22
	*/
	public void function testGettingTheFirstElementFromTheListWithBlankValueItemsWithIgnoreEmptyValues(){

		// Use the listFirst() function to get the first element of a list.
		// Returns : The first element of a list. If the list is empty, returns an empty string.
		// Note    : For more details see: http://tinyurl.com/ckmloet
		// Usage   : listFirst(list [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList     = ",bike,,bus,plane,train,boat,,orbiter";
		var firstItem  = 0;

		// Get the first element in the list
		firstItem = listFirst(myList, ",", "Yes");

		// What gets returned?  Notice the extra argument to the listFirst() call above?
		assertEquals("bike",firstItem);
	}

	/**
	*@order 23
	*/
	public void function testGettingTheLastElementFromTheList(){

		// Use the listLast() function to get the last element of a list.
		// Returns : The last element of the list.
		// Note    : For more details see: http://tinyurl.com/cdzg8hq
		// Usage   : listLast(list [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList     = "bike,car,bus,plane,train,boat,plane,orbiter,satellite";
		var lastItem   = 0;

		// Get the last element in the list
		lastItem = listLast(myList, ",");

		// What gets returned? 
		assertEquals(__,lastItem);
	}

	/**
	*@order 24
	*/
	public void function testGettingTheLastElementFromTheListWithBlankValueItems(){

		// Use the listLast() function to get the last element of a list.
		// Returns : The last element of the list.
		// Note    : For more details see: http://tinyurl.com/cdzg8hq
		// Usage   : listLast(list [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList     = ",bike,,bus,plane,train,boat,,orbiter,satellite,";
		var lastItem   = 0;

		// Get the last element in the list
		lastItem = listLast(myList, ",");

		// What gets returned? 
		assertEquals(__,lastItem);
	}

	/**
	*@order 25
	*/
	public void function testGettingTheLastElementFromTheListWithBlankValueItemsWithIgnoreEmptyValues(){

		// Use the listLast() function to get the last element of a list.
		// Returns : The last element of the list.
		// Note    : For more details see: http://tinyurl.com/cdzg8hq
		// Usage   : listLast(list [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList     = ",bike,,bus,plane,train,boat,,orbiter,satellite,";
		var lastItem   = 0;

		// Get the last element in the list
		lastItem = listLast(myList, ",", "Yes");

		// What gets returned?  Notice the extra argument to the listLast() call above?
		assertEquals("satellite",lastItem);
	}

	/**
	*@order 26
	*/
	public void function testGettingTheLengthOfTheList(){

		// Use the listLen() function to get the number of elements in a list.
		// Returns : Integer; the number of elements in a list.
		// Note    : For more details see: http://tinyurl.com/d8cwuxf
		// Usage   : listLen(list [, delimiters ]) - square brackets indicate optional arguments

		var myList     = ",bike, ,bus,plane,train,boat,,orbiter,satellite,";
		var listLength = 0;

		// Get the length of the elements in the list
		listLength = listLen(myList, ",");

		// What gets returned?  Count them - go on...
		assertEquals(__,listLength);
	}

	/**
	*@order 27
	*/
	public void function testGettingTheLengthOfTheConfusingList(){

		// Use the listLen() function to get the number of elements in a list.
		// Returns : Integer; the number of elements in a list.
		// Note    : For more details see: http://tinyurl.com/d8cwuxf
		// Usage   : listLen(list [, delimiters ]) - square brackets indicate optional arguments

		var myList     = ",bike, ,bus, plane,,, , ,,,,,train,boat,,orbiter, satellite,,, ,";
		var listLength = 0;

		// Get the length of the elements in the list
		listLength = listLen(myList, ",");

		// What gets returned?  Count them - go on...many more commas but how many more elements?
		assertEquals(__,listLength);
	}

	/**
	*@order 28
	*/
	public void function testPrependingToTheList(){

		// Use the listPrepend() function to insert an element at the beginning of a list.
		// Returns : A copy of the list, with value inserted at the first position.
		// Note    : For more details see: http://tinyurl.com/btm78zf
		// Usage   : listPrepend(list, value [, delimiters ]) - square brackets indicate optional arguments

		var myList     = "bike,car,bus,plane,train,boat,plane,orbiter,satellite";
		var listCopy   = "";

		// Prepend a specified value to the list
		listCopy = listPrepend(myList, "skate board");

		// What gets returned??
		assertEquals(__,listCopy);
	}	

	/**
	*@order 29
	*/
	public void function testPrependingBlankValueToTheList(){

		// Use the listPrepend() function to insert an element at the beginning of a list.
		// Returns : A copy of the list, with value inserted at the first position.
		// Note    : For more details see: http://tinyurl.com/btm78zf
		// Usage   : listPrepend(list, value [, delimiters ]) - square brackets indicate optional arguments

		var myList     = "bike,car,bus,plane,train,boat,plane,orbiter,satellite";
		var listCopy   = "";

		// Prepend a blank value to the list
		listCopy = listPrepend(myList, "");

		// What gets returned??  Huh???  Does it matter it's blank?
		assertEquals(__,listCopy);
	}

	/**
	*@order 30
	*/
	public void function testPrependingAnotherListValueToTheList(){

		// Use the listPrepend() function to insert an element at the beginning of a list.
		// Returns : A copy of the list, with value inserted at the first position.
		// Note    : For more details see: http://tinyurl.com/btm78zf
		// Usage   : listPrepend(list, value [, delimiters ]) - square brackets indicate optional arguments

		var myList     = "bike,car,bus,plane,train,boat,plane,orbiter,satellite";
		var listCopy   = "";

		// Prepend a specified value to the list
		listCopy = listPrepend(myList, "skate board,roller skates");

		// What gets returned??  As expected?
		assertEquals(__,listCopy);
	}

	/**
	*@order 31
	*/
	public void function testQualifyingTheListWithSingleQuote(){

		// Use the listQualify() function to insert a string at the beginning and end of list elements.
		// Returns : A copy of the list, with qualifier before and after the specified elements.
		// Note    : For more details see: http://tinyurl.com/bvjjvwv
		// Usage   : listQualify(list, qualifier [, delimiters, elements, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList        = "bike,car,bus,plane,train,boat,plane,orbiter,satellite";
		var listQualified = "";

		// Qualify the list values
		listQualified = listQualify(myList, "'");

		// What gets returned??  Nice feature?
		assertEquals(__,listQualified);
	}

	/**
	*@order 32
	*/
	public void function testQualifyingTheListWithDoubleQuote(){

		// Use the listQualify() function to insert a string at the beginning and end of list elements.
		// Returns : A copy of the list, with qualifier before and after the specified elements.
		// Note    : For more details see: http://tinyurl.com/bvjjvwv
		// Usage   : listQualify(list, qualifier [, delimiters, elements, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList        = "bike,car,bus,plane,train,boat,plane,orbiter,satellite";
		var listQualified = "";

		// Qualify the list values
		listQualified = listQualify(myList, "&quot;");

		// What gets returned??  Nice feature - notice the HTML Entity code?  Why use that?
		assertEquals(__,listQualified);
	}

	/**
	*@order 33
	*/
	public void function testQualifyingTheListWithDoubleQuoteWithListElementsWithSpecialCharacters(){

		// Use the listQualify() function to insert a string at the beginning and end of list elements.
		// Returns : A copy of the list, with qualifier before and after the specified elements.
		// Note    : For more details see: http://tinyurl.com/bvjjvwv
		// Usage   : listQualify(list, qualifier [, delimiters, elements, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList        = "O'Doherty,McLaughlin,McDaid,Moore";
		var listQualified = "";

		// Qualify the list values
		listQualified = listQualify(myList, "&quot;");

		// What gets returned??  Nice feature - notice the HTML Entity code?  Why use that?
		assertEquals(__,listQualified);
	}	

	/**
	*@order 34
	*/
	public void function testQualifyingTheListWithDoubleQuoteWithElementsComposedOfAlphabeticCharacters(){

		// Use the listQualify() function to insert a string at the beginning and end of list elements.
		// Returns : A copy of the list, with qualifier before and after the specified elements.
		// Note    : For more details see: http://tinyurl.com/bvjjvwv
		// Usage   : listQualify(list, qualifier [, delimiters, elements, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList        = "O'Doherty,McLaughlin,McDaid,Moore";
		var listQualified = "";

		// Qualify the list values
		listQualified = listQualify(myList, "&quot;", ",");

		// What gets returned??  Nice feature - notice the HTML Entity code?  Why use that?
		assertEquals(__,listQualified);
	}

	/**
	*@order 35
	*/
	public void function testQualifyingTheListWithDoubleQuoteWithElementsComposedOfAlphaNumericCharacters(){

		// Use the listQualify() function to insert a string at the beginning and end of list elements.
		// Returns : A copy of the list, with qualifier before and after the specified elements.
		// Note    : For more details see: http://tinyurl.com/bvjjvwv
		// Usage   : listQualify(list, qualifier [, delimiters, elements, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList        = "Apollo 11,Apollo 13,STS-124,STS-125";
		var listQualified = "";

		// Qualify the list values
		listQualified = listQualify(myList, "&quot;", ",");

		// What gets returned??  Nice feature - notice the HTML Entity code?  Why use that?
		assertEquals(__,listQualified);
	}

	/**
	*@order 36
	*/
	public void function testlistRestWithMultiElementList(){

		// Use the listRest() function to get a list, without its first element. 
		// Returns : A copy of list, without the first element. If list has one element, returns an empty list.
		// Note    : For more details see: http://tinyurl.com/bqdpt5y
		// Usage   : listRest(list [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList         = "Apollo 11,Apollo 13,STS-124,STS-125";
		var listRestResult = "";

		// Qualify the list values
		listRestResult = listRest(myList, ",");

		// What gets returned??  Easy enough...
		assertEquals(__,listRestResult);
	}

	/**
	*@order 37
	*/
	public void function testlistRestWithSingleElementList(){

		// Use the listRest() function to get a list, without its first element. 
		// Returns : A copy of list, without the first element. If list has one element, returns an empty list.
		// Note    : For more details see: http://tinyurl.com/bqdpt5y
		// Usage   : listRest(list [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList         = "Apollo 11";
		var listRestResult = "";

		// Qualify the list values
		listRestResult = listRest(myList, ",");

		// What gets returned??  Hmmm - what happened?
		assertEquals(myList,listRestResult);
	}
	
	/**
	*@order 38
	*/
	public void function testDeleteAnElementFromTheList(){

		// Use the listDeleteAt() function to delete an element from a list.
		// Returns : A copy of the list, without the specified element. 
		// Note    : For more details see: http://tinyurl.com/bwb7a43
		// Usage   : listDeleteAt(list, position [, delimiters ]) - square brackets indicate optional arguments

		var myList             = "Apollo 11,Apollo 12,Apollo 13,Apollo 14,Apollo 15,Apollo 16,Apollo 17";
		var listDeleteAtResult = "";

		// Delete the specified list item value - remove the failed lunar landing mission
		listDeleteAtResult = listDeleteAt(myList, 3);

		// Check the list again
		assertEquals(__,listDeleteAtResult);
	}
	
	/**
	*@order 39
	*/
	public void function testDeleteAnElementFromTheListUsingSpaceAsDelimeter(){

		// Use the listDeleteAt() function to delete an element from a list.
		// Returns : A copy of the list, without the specified element. 
		// Note    : For more details see: http://tinyurl.com/bwb7a43
		// Usage   : listDeleteAt(list, position [, delimiters ]) - square brackets indicate optional arguments

		var myList             = "Apollo 11 carried the first ever astronauts to step on the moon";
		var listDeleteAtResult = "";

		// Delete the specified list item value
		listDeleteAtResult = listDeleteAt(myList, 6, " ");

		// What gets returned??  Hmmm - what happened the delimeter?  Should that be a comma?
		assertEquals(__,listDeleteAtResult);
	}
	
	/**
	*@order 40
	*/
	public void function testGettingAnElementFromSpecificPositionInList(){

		// Use the listGetAt() function to get a list element at a specified position.
		// Returns : Value of the list element at position X. 
		// Note    : For more details see: http://tinyurl.com/bnrolw4
		// Usage   : listGetAt(list, position [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList          = "Apollo 11 carried the first ever astronauts to step on the moon";
		var listGetAtResult = "";

		// Get a specified list item value
		listGetAtResult = listGetAt(myList, 7, " ");

		// What gets returned??  Notice the delimeter?  What about the spaces?
		assertEquals(__,listGetAtResult);
	}

	/**
	*@order 41
	*/
	public void function testGettingAnElementFromSpecificPositionInListCommaDelimeted(){

		// Use the listGetAt() function to get a list element at a specified position.
		// Returns : Value of the list element at position X. 
		// Note    : For more details see: http://tinyurl.com/bnrolw4
		// Usage   : listGetAt(list, position [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList          = "Apollo 11,carried,the,first,ever,astronauts,to,step,on,the,moon";
		var listGetAtResult = "";

		// Get a specified list item value
		listGetAtResult = listGetAt(myList, 7);

		// What gets returned??  Notice the delimeter this time?  Why didn't we get the same result as the previous test, it's got the same index value?
		assertEquals(__,listGetAtResult);
	}

	/**
	*@order 42
	*/
	public void function testInsertingAnElementIntoTheList(){

		// Use the listInsertAt() function to insert an element into the list.
		// Returns : A copy of the list, with value inserted at the specified position. 
		// Note    : For more details see: http://tinyurl.com/8a25r6k
		// Usage   : listInsertAt(list, position, value [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList             = "1,2,3,5";
		var listInsertAtResult = "";

		// Insert the missing sequence number
		listInsertAtResult = listInsertAt(myList, 4, "4");

		// What gets returned??  Is everything in order now?
		assertEquals(__,listInsertAtResult);
	}
	
	/**
	*@order 43
	*/
	public void function testInsertingAnElementIntoTheListWithEmptyValues(){

		// Use the listInsertAt() function to insert an element into the list.
		// Returns : A copy of the list, with value inserted at the specified position. 
		// Note    : For more details see: http://tinyurl.com/8a25r6k
		// Usage   : listInsertAt(list, position, value [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList             = "1,2,,3,5";
		var listInsertAtResult = "";

		// Insert the missing sequence number
		listInsertAtResult = listInsertAt(myList, 4, "4", ",", "yes");

		// What gets returned??  Is everything still in order?
		assertEquals(__,listInsertAtResult);
	}
	
	/**
	*@order 44
	*/
	public void function testReplaceContentOfElementInTheList(){

		// Use the listSetAt() function to replace the contents of a list element.
		// Returns : A copy of a list, with a new value assigned to the element at a specified position. 
		// Note    : For more details see: http://tinyurl.com/c4whx67
		// Usage   : listSetAt(list, position, value [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList          = "1,2,,4,5";
		var listSetAtResult = "";

		// Update the blank values in the list
		listSetAtResult = listSetAt(myList, 3, "3");

		// What gets returned??  OK so what happens here - what's wrong with this result - where's 9 gone?
		assertEquals(__,listSetAtResult);
	}
	
	/**
	*@order 45
	*/
	public void function testReplaceContentOfElementInTheListIncludeEmptyValues(){

		// Use the listSetAt() function to replace the contents of a list element.
		// Returns : A copy of a list, with a new value assigned to the element at a specified position. 
		// Note    : For more details see: http://tinyurl.com/c4whx67
		// Usage   : listSetAt(list, position, value [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList          = "1,2,,4,5";
		var listSetAtResult = "";

		// Update the blank values in the list
		listSetAtResult = listSetAt(myList, 3, "3", ",", "yes");

		// What gets returned??  How come things look OK here, it's the same index value?
		assertEquals(__,listSetAtResult);
	}
	
	/**
	*@order 46
	*/
	public void function testSortingTheList(){

		// Use the listSort() function to sort list elements according to a sort type and sort order.
		// Returns : A copy of a list, sorted.
		// Note    : For more details see: http://tinyurl.com/c4vukpk
		// Usage   : listSort(list, sort_type [, sort_order, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList          = "1,2,3,4,5";
		var listSortResult = "";

		// Sort the list
		listSortResult = listSort(myList, "numeric", "desc");

		// What gets returned??  
		assertEquals(__,listSortResult);
	}
	
	/**
	*@order 47
	*/
	public void function testSortingTheListWithEmptyValues(){

		// Use the listSort() function to sort list elements according to a sort type and sort order.
		// Returns : A copy of a list, sorted.
		// Note    : For more details see: http://tinyurl.com/c4vukpk
		// Usage   : listSort(list, sort_type [, sort_order, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList          = "1,2,,,3,4,5,,6";
		var listSortResult = "";

		// Sort the list
		listSortResult = listSort(myList, "numeric", "desc");

		// What gets returned??  Where have the empties gone?
		assertEquals(__,listSortResult);
	}
	
	/**
	*@order 48
	*/
	public void function testSortingTheListWithEmptyValuesAsText(){

		// Use the listSort() function to sort list elements according to a sort type and sort order.
		// Returns : A copy of a list, sorted.
		// Note    : For more details see: http://tinyurl.com/c4vukpk
		// Usage   : listSort(list, sort_type [, sort_order, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList          = "1,2,,,3,4,5,,6";
		var listSortResult = "";

		// Sort the list
		listSortResult = listSort(myList, "text", "desc", ",", "yes");

		// What gets returned??  What happened to number 10?
		assertEquals(__,listSortResult);
	}
	
	/**
	*@order 49
	*/
	public void function testConvertingTheListToAnArray(){

		// Use the listToArray() function to copy the elements of a list to an array. 
		// Returns : An Array
		// Note    : For more details see: http://tinyurl.com/bqu9c5h
		// Usage   : listToArray(list [, delimiters[, includeEmptyFields[, multiCharacterDelimiter]]]) - square brackets indicate optional arguments

		var myList            = "1,,,4,5,,6";
		var listToArrayResult = "";

		// Update the blank values in the list
		listToArrayResult = listToArray(myList, "," , "yes");

		// What gets returned??
		assertEquals(__,listToArrayResult);
	}
	
	/**
	*@order 50
	*/
	public void function testConvertingTheListToAnArrayExcludingEmptySpaces(){

		// Use the listToArray() function to copy the elements of a list to an array. 
		// Returns : An Array
		// Note    : For more details see: http://tinyurl.com/bqu9c5h
		// Usage   : listToArray(list [, delimiters[, includeEmptyFields[, multiCharacterDelimiter]]]) - square brackets indicate optional arguments

		var myList            = "1,2,,,5";
		var listToArrayResult = "";

		// Update the blank values in the list
		listToArrayResult = listToArray(myList, "," , "no");

		// What gets returned??  This is much cleaner - why?
		assertEquals(__,listToArrayResult);
	}
	
	/**
	*@order 51
	*/
	public void function testConvertingTheListToAnArrayUsingLetters(){

		// Use the listToArray() function to copy the elements of a list to an array. 
		// Returns : An Array
		// Note    : For more details see: http://tinyurl.com/bqu9c5h
		// Usage   : listToArray(list [, delimiters[, includeEmptyFields[, multiCharacterDelimiter]]]) - square brackets indicate optional arguments

		var myList            = "A,B,,C,D,,E";
		var listToArrayResult = "";

		// Convert the alphabet list to an array
		listToArrayResult = listToArray(myList, "," , "yes");

		// What gets returned??  This string array is a mess!!
		assertEquals(__,listToArrayResult);
	}
	
	/**
	*@order 52
	*/
	public void function testConvertingTheListToAnArrayUsingLettersAndSPaces(){

		// Use the listToArray() function to copy the elements of a list to an array. 
		// Returns : An Array
		// Note    : For more details see: http://tinyurl.com/bqu9c5h
		// Usage   : listToArray(list [, delimiters[, includeEmptyFields[, multiCharacterDelimiter]]]) - square brackets indicate optional arguments

		var myList            = "A,B,,C,D,,E";
		var listToArrayResult = "";

		// Get the cleaner version alphabet array
		listToArrayResult = listToArray(myList, "," , "no");

		// What gets returned??  That's tidier.
		assertEquals(__,listToArrayResult);
	}
	
	/**
	*@order 53
	*@minVersion 10
	*/
	function testCaseSensitiveListRemoveDuplicatesCF10(){
		// listRemoveDuplicates is new in ColdFusion 10
		// see: http://help.adobe.com/en_US/ColdFusion/10.0/CFMLRef/WSd8001ae4abdbd911-7fc6f4b01350d8e2282-8000.html
		var myList            = "The cat in the hat sat on the mat";
		// case insensitive remove duplicates
		var result = ListRemoveDuplicates(myList, " ");
		
		// What gets returned?
		assertEquals(__,result);
	}

	/**
	*@order 54
	*@minVersion 10
	*/
	function testCaseInSensitiveListRemoveDuplicatesCF10(){
		// listRemoveDuplicates is new in ColdFusion 10
		// see: http://help.adobe.com/en_US/ColdFusion/10.0/CFMLRef/WSd8001ae4abdbd911-7fc6f4b01350d8e2282-8000.html
		var myList            = "The cat in the hat sat on the mat";
		var result = "";
		// case sensitive remove duplicates - depending on server type
		if (server.coldfusion.productname is "Railo") {
		result = 'ListRemoveDuplicates(myList, " ")';				// Railo
		}
		else {
		result = 'ListRemoveDuplicates(myList, " ", true)';			// CF 10 and Above
		} 
		result = evaluate(result);
		
		// What gets returned??
		assertEquals(__,result);
	}
	
}
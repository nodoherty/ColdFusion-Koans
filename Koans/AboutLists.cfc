/**
* @mxunit:decorators mxunit.framework.decorators.OrderedTestDecorator
*/
component extends="Koans.BaseKoan"{
	
	/**
	*@order 1
	*/
	public void function testListWithNonStandardDelimitors(){
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
	public void function testInspectingListForValueWithDifferentCaseWithNoMatch(){

		// Use the listContainsNoCase() function to determine the index of the first list element that contains a specified substring.
		// Returns : Index of the first list element that contains substring, regardless of case. If not found, returns zero.
		// Note    : For more details see: http://tinyurl.com/cblfeqb
		// Usage   : listContainsNoCase(list, substring [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		var myList    = "bike,car,bus,train,boat,plane";
		var isItThere = 0;

		// Check the list for a specified substring
		isItThere = listContainsNoCase(myList, "Orbiter", ",");

		// What gets returned if it DOESN'T match?
		assertEquals(__,isItThere);
	}

	/**
	*@order 10
	*/
	public void function testInspectingListForValueThatIsCaseInsensitiveWithMatch(){

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
	*@order 11
	*/
	public void function testInspectingListForListItemWithNoMatch(){

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
	*@order 12
	*/
	public void function testInspectingListForListItemWithNoMatchAgain(){

		// Use the listFind() function to determine the index of the first list element in which a specified value occurs. Case sensitive.
		// Returns : Index of the first list element that contains value, with matching case. If not found, returns zero.
		// Note    : For more details see: http://tinyurl.com/d86ktzg
		// Usage   : listFind(list, value [, delimiters, includeEmptyValues ]) - square brackets indicate optional arguments

		// WARNING : listFind() and listContains() are very similar but behave very differently...

		var myList    = "bike,car,bus,train,boat,plane";
		var isItThere = 0;

		// Check the list for a specified substring 
		isItThere = listFind(myList, "Bus", ",");

		// What gets returned?  Why isn't this found either?
		assertEquals(__,isItThere);
	}

	/**
	*@order 13
	*/
	public void function testInspectingListForListItemWithMatch(){

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
	*@order 14
	*/
	public void function testInspectingListForListItemWithNoMatchCaseInsensitive(){

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
	*@order 15
	*/
	public void function testInspectingListForListItemWithMatchCaseInsensitive(){

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

	/*
		BEING IMPLEMENTED
	*/
	//listValueCountNoCase("list", "value", [delimiters]);
	//listFirst("list", [delimiters]);
	//listLast("list", [delimiters]);
	//listLen("list", [delimiters]);
	//listPrepend("list", "value", [delimiters]);
	//listQualify("list", "qualifier", [delimiters], [elements]);
	//listRest("list", [delimiters]);
	//listSort("list", "sort_type", [sort_order], [delimiters]);
	//listDeleteAt("list", position, [delimiters]);
	//listGetAt("list", position, [delimiters]);
	//listInsertAt("list", position, "value", [delimiters]);
	//listSetAt("list", position, "value", [delimiters]);
	//listToArray("list", [delimiters]);
	//listValueCount("list", "value", [delimiters]);

}
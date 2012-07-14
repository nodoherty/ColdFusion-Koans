/**
* @mxunit:decorators mxunit.framework.decorators.OrderedTestDecorator
*/
component extends="Koans.BaseKoan"{
	
	/**
	*@order 1
	*/
	public void function testCheckingIfAStructKeyExists(){
		var myStruct = {foo = "Foo"};

		//what is the key value that will make this test pass
		assertTrue(structKeyExists(myStruct,"__"));
	}

	/**
	*@order 2
	*/
	public void function testAddingAStructKey(){
		var myStruct = {foo = "Foo"};

		//add the correct key and value to the mystruct to make the test pass
		assertEquals(myStruct.bar,"Bar");
	}

	/**
	*@order 3
	*/
	public void function testGettingStructKey(){
		var myStruct = {bar = "Bar"};

		//there are two ways to access a structure's data:
		// 1) structureName.key
		// 2) structureName["key"] - this way is useful if you have dynamic keys or spaces in keys

		assertEquals("__","Bar");
		//access the structure key in another way
		assertEquals("__","Bar");
	}

	/**
	*@order 4
	*/
	public void function testDeletingStruct(){
		
		// Use StructDelete() to remove an element from a structure
		// Usage: structDelete(structure, key)
		// Reference: http://help.adobe.com/en_US/ColdFusion/9.0/CFMLRef/WSc3ff6d0ea77859461172e0811cbec22c24-7f07.html
		
		// Let's create our struct, assigning great cars as our keys
		var carStruct = { bmw = "good", delorean = "great!" };

		// Let's use structDelete() to remove the lesser car.
		structDelete(carStruct, "bmw"); 

		// Let's  use the structKeyExists() function to see if our BMW still exists
		assertEquals(structKeyExists(carStruct, "bmw"), "yes");

	}
	
	/**
	 *@order 5
	 */
	public void function testStructIsEmpty() {
	 	
		// Use the structIsEmpty() function to determine if a struct is empty
		// Returns : Boolean
		// Note    : For more details see: http://tinyurl.com/7dompdp
		// Usage   : structIsEmpty(struct);
		
		var myStruct= StructNew();
		
		assertEquals(__,structIsEmpty(myStruct));
	}
	
	/**
	 *@order 6
	 */
	public void function testStructCount() {
		
		// Use the structCount() function to count the number of keys in a struct
		// Returns : The number of keys
		// Note    : For more details see: http://tinyurl.com/buj598f
		// Usage   : structCount(struct);
		
		var myStruct= {foo = "Foo", bar= "Bar"};
		
		assertEquals(__,structCount(myStruct));
	}	
		
	/**
	 *@order 7
	 */
	public void function testStructClear() {
		
		// Use the structClear() function to remove all keys and values from a struct
		// Returns : True if successful
		// Note    : For more details see: http://tinyurl.com/7rzrywh
		// Usage   : structClear(struct);
		
		var myStruct= {foo = "Foo", bar= "Bar"};
		
		structClear(myStruct);
		
		assertEquals(__,structIsEmpty(myStruct));
	}
	
	/**
	 *@order 8
	 */
	public void function testStructInsert() {
		
		// Use the structInsert() function to insert a new key/value pair in a struct (with optional overwrite parameter)
		// Returns : True if successful
		// Note    : For more details see: http://tinyurl.com/7r35hx6
		// Usage   : structInsert(struct, key, value [,allowoverwrite]);
		
		var myStruct= {foo = "Foo", bar= "Bar"};
		
		structInsert(myStruct,"rainbows","Colorful");
		
		assertEquals(__,myStruct.rainbows);
	}
	
	/**
	 *@order 9
	 */
	public void function testStructFindKey() {
		
		// Use structFindKey to find one or more values within a struct or a struct with a struct or array tied to the specified key
		// Returns : An array of structures (empty if not found), with each structure having the struct containing the key, the "path" to the key, and the value
		// Note    : For more details see: http://tinyurl.com/czwpgus
		// Usage   : structFindKey(struct to search, value, scope)
		
		var myStruct= {goodGuy = "Luke", badGuy = "Darth Vader", scoundrel= "Han"};
		var whoIsTheGoodGuy= structFindKey(myStruct,"goodGuy","one"); 
		
		//Hint: use debug() and the mxUnit debug view to view the full data returned by structFindKey.
		//debug(whoIsTheGoodGuy);
		
		assertEquals(__,whoIsTheGoodGuy[1].value);
	}

	/**
	 *@order 10
	 */
	public void function testStructFindValue() {
		
		// Use structFindValue to find one or more key within a struct or a struct with a struct or array tied to the specified value
		// Returns : An array of structures (empty if not found), with each structure having the struct containing the value, the "path" to the value, and the key
		// Note    : For more details see: http://tinyurl.com/79kuqne
		// Usage   : structFindValue(struct to search, value, scope)
		
		var myCharacters= {
			Luke= {lastname= "Skywalker", allegiance= "Rebels"},
			Han= {lastname = "Solo", allegiance = "Rebels"},
			Anakin= {lastname = "Skywalker", allegiance = "Empire"}
		};
		
		var whoAreTheRebels= structFindValue(myCharacters,"Rebels","all"); 
		
		//Hint: use debug() and the mxUnit debug view to view the full data returned by structFindValue.
		//debug(whoAreTheRebels);
		
		assertEquals(__,whoAreTheRebels[1].key);
	}
	
	/**
	 *@order 11
	 */
	public void function testStructFindValueNotFound() {
		
		// Use structFindValue to find one or more key within a struct or a struct with a struct or array tied to the specified value
		// Returns : An array of structures, with each structure having the struct containing the key, the "path" to the value, and the value
		// Note    : For more details see: http://tinyurl.com/79kuqne
		// Usage   : structFindValue(struct to search, value, scope)
		
		var myCharacters= {
			Luke= {lastname= "Skywalker", allegiance= "Rebels"},
			Han= {lastname = "Solo", allegiance = "Rebels"},
			Anakin= {lastname = "Skywalker", allegiance = "Empire"}
		};
		
		var whereIsTheFett= structFindValue(myCharacters,"Fett","all"); 
		
		assertEquals(__,arrayIsEmpty(whereIsTheFett));
	}
	
	/**
	 *@order 12
	 */
	public void function testStructKeyList() {
		
		// Use structKeyList to return a list of keys
		// Returns : A list of keys in the specified struct
		// Note    : For more details see: http://tinyurl.com/d4pkxbo
		// Usage   : structKeyList(struct [,delimiter])
		
		var myStruct= {goodGuy = "Luke", badGuy = "Darth Vader"};
		var myKeyList= structKeyList(myStruct);
		
		//Note: You cannot rely on the struct keys being returned in a particular order, so we'll test the list length
		assertEquals(__,ListLen(myKeyList));
	}	
}
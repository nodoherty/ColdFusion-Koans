component extends="mxunit.framework.TestCase"{
	public void function testListWithNonStandardDelimitors(){
	    var myList = "apple_pear_banana_grape";
	    
	    assertEquals(listGetAt(myList,2,"_","__"));
	}
}
component extends="mxunit.framework.TestCase"{
	
	//for these tests you'll need to study /Components/testComponent.cfc
	public void function testGetFullName(){

		var testComponent = new Components.TestComponent("Homer","Simpson");

		assertEquals(testComponent.getFullName(),"__");
	}
	
	public void function testOnMissingMethod(){
		var testComponent = new Components.TestComponent();
		
		var reverseName = testComponent.getReverseName("Ned","Flanders");
		
		assertEquals(reverseName,"__");	
	}
}
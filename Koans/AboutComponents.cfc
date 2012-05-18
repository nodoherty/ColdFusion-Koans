/**
* @mxunit:decorators mxunit.framework.decorators.OrderedTestDecorator
*/
component extends="Koans.BaseKoan"{
	
	//for these tests you'll need to study /Components/testComponent.cfc

	/**
	*@order 1
	*/
	public void function testGetFullName(){

		var testComponent = new Components.TestComponent("Homer","Simpson");

		assertEquals(__,testComponent.getFullName());
	}
	
	/**
	*@order 2
	*/
	public void function testOnMissingMethod(){
		var testComponent = new Components.TestComponent();
		
		var reverseName = testComponent.getReverseName("Ned","Flanders");
		
		assertEquals(__,reverseName);	
	}
}
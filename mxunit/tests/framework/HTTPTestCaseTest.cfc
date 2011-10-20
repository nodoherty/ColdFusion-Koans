<cfcomponent extends="mxunit.framework.TestCase">

	<cffunction name="setUp" access="public" output="false" hint="Create the CUT">
		<cfset variables.HTTPTestCase = CreateObject("Component","mxunit.framework.HTTPTestCase")>
	</cffunction> 
	
	<cffunction name="testComponentCreation" access="public" hint="Test that the httptestcase gets created properly">
		
		<cfset var expected = "mxunit.framework.HTTPTestCase" />
		<cfset var actual = "#GetMetaData(variables.HTTPTestCase).name#" />
		
		<cfset assertEquals(expected,actual) />
		
		<!--- make sure it extends test case --->
		<cfset expected = "mxunit.framework.TestCase" />
		<cfset actual = "#GetMetaData(variables.HTTPTestCase).extends.name#" />
		
		<cfset assertEquals(expected,actual) />
	</cffunction> 
	
	<cffunction name="testReplayCFHTTPFuntionRenamesFunction" access="public" hint="Test that the method with cfhttp gets intercepted and renamed">
		<cfset var mock = mock("mxunit.framework.TestCase") />
		
		<cfset injectMethod(mock,this,"httpMethodToInject") /> 
		
		<cfset makePublic(variables.HTTPTestCase,"interceptHTTPFunction") />
		
		<cfset variables.HTTPTestCase.replayHTTPFunction(mock,"httpMethodToInject") />

		<cfset assertTrue(structKeyExists(mock,"__httpMethodToInject")) />
	</cffunction>
	
	<cffunction name="testInterceptingAMethodDoesntExistThrowsError" access="public" hint="Test to make sure that if we pass in a method that doesn't exist the function will throw an error" > 
		<cfset var mock = mock("mxunit.framework.TestCase") />
		
		<cfset expectException("MethodNotDefined") />
		
		<cfset makePublic(variables.HTTPTestCase,"interceptHTTPFunction") />

		<cfset variables.HTTPTestCase.replayHTTPFunction(mock,"iDontExist") /> 
		
	</cffunction>
		
	<cffunction name="httpMethodToInject" access="private" output="false">
		<cfset test = cfhttp(url="http://www.mxunit.org", result="result") />
	</cffunction>
</cfcomponent>
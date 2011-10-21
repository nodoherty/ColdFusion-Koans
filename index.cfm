<cfscript>
	testSuite = new mxunit.framework.TestSuite();

	testSuite.addAll("Koans.AboutAsserts");
	testSuite.addAll("Koans.AboutVariables");
	testSuite.addAll("Koans.AboutBooleans");
	testSuite.addAll("Koans.AboutStrings");
	testSuite.addAll("Koans.AboutNumbers");
	testSuite.addAll("Koans.AboutDates");
	testSuite.addAll("Koans.AboutArrays");
	testSuite.addAll("Koans.AboutStructs");
	testSuite.addAll("Koans.AboutLists");
	testSuite.addAll("Koans.AboutFunctions");
	testSuite.addAll("Koans.AboutComponents");
	testSuite.addAll("Koans.AboutComponentTags");

	results = testSuite.run();
</cfscript>

<h1>Welcome to the ColdFusion Koans</h1>
<p>The ColdFusion Koans are a set of unit tests that the user must make pass by filling in values. To get started open the file AboutAsserts/AboutAsserts.cfc and begin making the tests pass.</p>
<p>As you complete a secion you'll confirm your tests by refreshing this page or running the test suite using the mxunit eclipse plugin.</p>
<p><b>This is a comunity run project to please feel free to fork this project and contribute any time.</b></p>com

<cfoutput>
	#replaceNoCase(results.getResultsOutput("html"),"ColdFusion-Koans.","","ALL")#
</cfoutput>


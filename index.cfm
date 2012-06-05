<cfscript>
  version = 0;

 

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
  testSuite.addAll("Koans.AboutExceptions");
  testSuite.addAll("Koans.AboutQueries");

  if(application.version >= 10){
  /****************
    If you have a topic that is 100% reliant on ColdFusion 10 or greater add them here
  *****************/
    testSUite.addAll("Koans.AboutClosures");
  } 

  results = testSuite.run();

  results = replaceNoCase(results.getResultsOutput("html"),"#application.currentDirectory#.","","ALL");
  results = replaceNoCase(results,"/mxunit","mxunit","ALL");
</cfscript>
<!DOCTYPE html>
<html>
  <head>
    <title>Learn CFML with the ColdFusion Koans</title>
    <meta content='Learn CFML with the ColdFusion Koans' name='description' />
    <meta content='CFML' name='keywords' />
    <meta content='yes' name='apple-mobile-web-app-capable' />
    <meta content='black' name='apple-mobile-web-app-status-bar-style' />
    <link href='/apple_favicon.png' rel='apple-touch-icon' />

    <link href='/favicon.ico' rel='shortcut icon' type='image/x-icon' />
    <style type='text/css'>
      /*<![CDATA[*/
        #main_content {
margin: 0;
padding: 10px 60px 30px 60px;
}

html, body, div, span, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, address, cite, code, em, img, q, strong, sub, sup, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
margin: 0;
padding: 0;
border: 0;
outline: 0;
font-weight: inherit;
font-style: inherit;
font-size: 100%;
font-family: inherit;
vertical-align: baseline;
border-image: initial;
}

h1, h2, h3 {
color: #326594;
}

h1 {
font-size: 28px;
}

h2 {
font-size: 20px;
}

h3 {
font-size: 16px;
clear: both;
display: block;
margin-top:20px;
margin-bottom:10px;
}

#top_line {
  background-attachment:initial;
  background-clip:initial;
  background-color:#326594;
  background-image:initial;
  background-origin:initial;
  background-position:initial initial;
  background-repeat:initial initial;
  height:6px;
  left:0;
  position:fixed;
  right:0;
  top:0;
  z-index:2;
}
#welcome {
margin: 20px 0;
font-size: 16px;
color: #555;
line-height: 25px
}
      /*]]>*/
    </style>
 </head>
  <body>
    <div id='top_line'></div>
    <div id='main_content'>
      <section id='introduction'>

<div style="clear: both; display: block;">
<section id="welcome">
    <h1><span>Welcome to the ColdFusion Koans</span></h1>
    <img src="cfkoanslogo.png" style="width:200px;float: left;margin-right:25px;"/>
	<p>The ColdFusion Koans are a set of unit tests that the user must make pass by filling in values. To get started open the file Koans/AboutAsserts.cfc and begin making the tests pass.</p>
	<p>As you complete a secion you'll confirm your tests by refreshing this page or running the test suite using the mxunit eclipse plugin.</p>
	<p><b>This is a comunity run project to please feel free to fork this project and contribute any time.</b></p>
</section>
</div>
<div>
<cfoutput>
	#results#
</cfoutput>
</div>
  </body>
</html>
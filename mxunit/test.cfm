<cfset HTTPTestCase = CreateObject("Component","mxunit.framework.HTTPTestCase")>

<cfset testComponent = CreateObject("Component","TestComponent")>

<cfset HTTPTestCase.httpReplay(testComponent,"getEspnText") />

<cfset result = HTTPTestCase.getEspnText() />

<cfdump var='#result#' />
<!---show path--->
<cfdump var="#HTTPTestCase.metadata.path#" />

<cfdump var="#getcomponentmetadata("mxunit.framework.HTTPTestCase")#" />






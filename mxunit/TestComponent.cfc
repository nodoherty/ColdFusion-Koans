<cfcomponent hint="Im a test component that has a method that calls cfhttp">

	<cffunction name="getEspnText" returntype="String" access="public" output="false" hint="" >
		<cfhttp url="http://www.espn.com" result="cfhttpresult">
		<cfreturn Left(cfhttpresult,1000)>	
	</cffunction>
</cfcomponent>
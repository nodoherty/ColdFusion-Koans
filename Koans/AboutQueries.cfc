<cfcomponent extends="Koans.BaseKoan" mxunit:decorators=mxunit.framework.decorators.OrderedTestDecorator>
	
	<cffunction name="buildQueryObj" access="private" returntype="query" output="false">
		<!--- You can build a query recordset within coldfusion with using a real database
			This is great for testing --->
		<cfset var qryObj = queryNew("ID,Name,Date","integer,varchar,date")>
		<cfset queryAddRow(qryObj, 5)>
		
		<cfset QuerySetCell(qryObj, "ID", 1, 1)>
		<cfset QuerySetCell(qryObj, "Name", "Joe Blogs", 1)>
		<cfset QuerySetCell(qryObj, "Date", dateFormat(now(),"short"), 1)>
		
		<cfset QuerySetCell(qryObj, "ID", 2, 1)>
		<cfset QuerySetCell(qryObj, "Name", "Janet Blogs", 2)>
		<cfset QuerySetCell(qryObj, "Date", dateFormat(dateAdd("d",-1,now()),"short"), 1)>
		
		<cfreturn qryObj>
	</cffunction> 

	<cffunction name="testIsQuery" returntype="void" output="false" order="1">
		<cfset var myQry = buildQueryObj()>
		<!--- Check that a variable is a query --->
		<cfset assertEquals(__,isQuery(myQry))>
	</cffunction>
	
	<cffunction name="testGettingQueryRecordCount" returntype="void" output="false" order="2">
		<cfset var myQry = buildQueryObj()>
		<!--- The total number of records in a returned query can be accessed using the recordcount --->
		<cfset assertEquals(__,myQry.recordCount)>
	</cffunction>

	<cffunction name="testGettingFirstName_dotNotation" returntype="void" output="false" order="3">
		<cfset var myQry = buildQueryObj()>
		<!--- You can use dot notation to get at a particular column and a bracketed row numver--->
		<cfset assertEquals(__,myQry.name[1])>		
	</cffunction>
	
	<cffunction name="testGettingSecondName_bracketNotation" returntype="void" output="false" order="4">
		<cfset var myQry = buildQueryObj()>
		<!--- You can use brackets in place of dot notation to get at a particular cell using column/row number combination --->
		<cfset assertEquals(__,myQry["name"][2])>		
	</cffunction>

	<cffunction name="testGettingQueryMetaData" returntype="void" output="false" order="5">
		<cfset var myQry = buildQueryObj()>
		<cfset var queryMetaData=getMetaData(myQry)>
		<!--- You can get the meta data on a query recordset as an array
			Make sure that debug output is turned on to see this --->
		<cfset debug(queryMetaData)>
		<cfset assertEquals(__,arrayLen(queryMetaData))>
	</cffunction>
	
	<cffunction name="testGettingColumnLabels" returntype="void" output="false" order="6">
		<cfset var myQry = buildQueryObj()>
		<cfset var queryColumns = myQry.columnList>
		<cfset assertEquals(__,queryColumns)>
	</cffunction>

	<cffunction name="testGettingRowByValue_QueryofQuery" returntype="void" output="false"  order="7">
		<cfset var myQry = buildQueryObj()>
		<cfset var QofQ = "">
		<!--- You can do a query on a query resultset from within coldfusion without having to hit the database again by specifying dbtype="query"--->
		<cfquery name="QofQ" dbtype="query">
			SELECT * FROM myQry WHERE ID = 2
		</cfquery>
		<cfset assertEquals(__,QofQ.recordCount)>		
	</cffunction>
	
	<cffunction name="testAdvancedSQL_QueryofQuery" returntype="void" output="false"  order="8">
		<cfset var myQry = buildQueryObj()>
		<cfset var QofQ = "">
		<cfset var success = TRUE>
		<!--- Query on a query supports a limited subset of functions available in a dedicated rdbms--->
		<cftry>
			<cfquery name="QofQ" dbtype="query">
				SELECT TOP(1) * FROM myQry
			</cfquery>
			<cfcatch>
				<cfset success = FALSE>
			</cfcatch>
		</cftry>
		
		<cfset assertTrue(success,"Expected True")>		
	</cffunction>
	
	<cffunction name="testQueryParams_preventSQLInjection" returntype="void" output="false"  order="9">
		<cfset var myQry = buildQueryObj()>
		<cfset var searchName = "'' OR 1=1">
		
		<!--- Query Params give a simple way of preventing sql injection attacks--->
		<cfquery name="QofQ" dbtype="query">
			SELECT * FROM myQry WHERE NAME = <cfqueryparam cfsqltype="cf_sql_varchar" value="#searchName#">
		</cfquery>
		
		<cfset assertEquals(__,QofQ.recordCount)>		
	</cffunction>
	
	<cffunction name="testQueryParams_typeMismatch" returntype="void" output="false"  order="10">
		<cfset var myQry = buildQueryObj()>
		<cfset var searchID = "3 OR 1=1"><!--- Alter this to make the test pass --->
		<cfset var success = TRUE>
		
		<!--- Query Params are datatype specific--->
		<cftry>
			<!--- This query will throw an error if a non integer is passed for 'searchID' --->
			<cfquery name="QofQ" dbtype="query">
				SELECT * FROM myQry WHERE ID = <cfqueryparam cfsqltype="cf_sql_integer" value="#searchID#">
			</cfquery>
			<cfcatch type="any">
				<cfset success = FALSE>
			</cfcatch>
		</cftry>
		
		<cfset assertTrue(success,"Expected True")>		
	</cffunction>
	
	
	
</cfcomponent>
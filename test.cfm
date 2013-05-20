<!---<cfset searchID = "oops">
	<cfquery name="QofQ" datasource="cbtraining">
		SELECT * FROM contacts WHERE ID = <cfqueryparam cfsqltype="cf_sql_integer" value="#searchID#">
	</cfquery>--->
<cfoutput>	
	<cfset numb1 = "1234e-10">
	<cfset numb1 = numb1 >
	<cfif isnumeric(numb1)>
		y - #numb1.getclass().getname()#
	<cfelse>
		n - #numb1.getclass().getname()#
	</cfif>
</cfoutput>			
	<!---<cfset numb2 = 1234e-10>--->
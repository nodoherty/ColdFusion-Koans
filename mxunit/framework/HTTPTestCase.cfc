<cfcomponent extends="mxunit.framework.TestCase" output="false">

	 <cffunction name="httpReplay" returntype="void" access="public" output="false" hint="I intercept a function that uses cfhttp and rename it">
		<cfargument name="componentUnderTest" type="any" required="true" hint="The component that is being tested" />
		<cfargument name="functionName" type="String" required="true" hint="Name of function that uses cfhttp" />		
		
		<cfif structKeyExists(arguments.componentUnderTest,arguments.functionName)>	
			<cfset var oldFunction = duplicate(arguments.componentUnderTest["#functionName#"]) />
			
			<cfset arguments.componentUnderTest["__#functionName#"] = oldFunction />
			
			<cfset structDelete(arguments.componentUnderTest,arguments.functionName) />
			
			<!---  when i come back lets try running the method and see if we can get to its local scope --->
			
		<cfelse>
			<cfthrow type="MethodNotDefined" message="The method #arguments.functionName# does not exist in the component under test" /> 
		</cfif>		
		
	 </cffunction> 
	 
	 <cffunction name="cfhttp" returntype="String" access="private" output="false" hint="override cfhttp" >
	 	<cfargument name="url" type="String" required="false" default="" displayname="" hint="" />
	 	<cfreturn arguments.url & "Modified" />
	 </cffunction>
</cfcomponent>
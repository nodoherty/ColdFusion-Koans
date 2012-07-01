<cfcomponent extends="mxunit.framework.TestDecorator" output="false" hint="Orders tests by an attribute">

	<cffunction name="getRunnableMethods" output="false" access="public" returntype="any" hint="">		<cfargument name="methodName">
		<cfargument name="args">
		
		<cfscript>
			var methods = getTarget().getRunnableMethods();
			var method = "";
			var minVersion = "";
			var ret = arrayNew(1);

			getVersion();

    		for(i = 1; i LTE arrayLen(methods); i++){

    			method = methods[i];

    			minVersion = val( getAnnotation( method, "minVersion" ) );
    			
    			if ( minVersion <= variables.cfmlEngineVersion ) {
					// test is applicable to engine so run it 
					arrayAppend(ret,method);
				}
    			
    		}
			// note excluded tests show as green
			return ret;
		</cfscript>
	</cffunction>

	<cffunction name="getVersion" output="false" access="private" returntype="void">
		<cfscript>
			var meta = getMetaData(this);

			if(NOT structKeyExists(meta, "cfmlEngineVersion")){
				meta.cfmlEngineVersion = val( ListFirst( server.coldfusion.productversion ) );
			}
			
			variables.cfmlEngineVersion = meta.cfmlEngineVersion;
	
		</cfscript>
	</cffunction>
</cfcomponent>
component{
	this.name = "ColdFusion Koans";
	
	this.mappings["/mxunit"] = expandPath('.') & "/mxunit/";
	//railo needs mappings to component dirs for calling the components from within mxunit
	this.mappings["/Koans"] = expandPath('.') & "/Koans/";
	this.mappings["/Components"] = expandPath('.') & "/Components/";

	this.sessionmanagement = true;
    this.sessiontimeout= CreateTimeSpan(0,1,0,0);

	public boolean function onApplicationStart(){
		application.currentDirectory = getCurrentDirectory();
		return true;
	}

	public boolean function onRequestStart(){
		if(isDefined("url.reset")){
			onApplicationStart();
		}

		return true;
	}

	private String function getCurrentDirectory()
	output=false hint="I get the current directory name that this app is running in"{
		dirs = getDirectoryFromPath(getCurrentTemplatePath());
		dirs = listToArray(dirs,createObject("java","java.lang.System").getProperty("file.separator"));

		return dirs[arrayLen(dirs)];
	}
}
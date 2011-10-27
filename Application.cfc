component{
	this.name = "ColdFusion Koans";

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
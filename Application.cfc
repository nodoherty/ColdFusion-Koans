component{
	this.name = "ColdFusion Koans";

	public boolean function onApplicationStart(){
		return true;
	}

	public boolean function onRequestStart(){
		if(isDefined("url.reset")){
			onApplicationStart();
		}

		return true;
	}
}
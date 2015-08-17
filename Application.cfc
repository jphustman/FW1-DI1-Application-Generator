component extends="fw1.framework.one" {

	this.name = 'fw1-di1-application-generator-3';
	this.sessionmanagement = true;
	this.clientmanagement = true;
	this.scriptprotect = true;
	this.mappings["/framework"] = getDirectoryFromPath(getCurrentTemplatePath()) & "fw1/framework";

	// FW/1 - configuration:
	variables.framework = {
		action = 'action',
		defaultSection = 'main',
		defaultItem = 'home',
		home = 'main.home',
		error = 'main.error',
		reload = 'reload',
		password = 'true',
		reloadApplicationOnEveryRequest = true
	};

	function setupApplication() {
		var beanFactory = new framework.ioc("model");
		setBeanFactory( beanFactory );
	}

}

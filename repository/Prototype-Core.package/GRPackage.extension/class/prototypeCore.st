*Prototype-Core
prototypeCore
	^ self new
		name: 'Prototype-Core';
		description: 'Prototype integration for Seaside. Prototype is a JavaScript Framework that aims to ease development of dynamic web applications.';
		addDependency: 'Javascript-Core';
		url: #seasideUrl;
		yourself
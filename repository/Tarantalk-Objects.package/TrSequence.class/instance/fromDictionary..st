initialize-release
fromDictionary: aDictionary
	self id: (aDictionary at: 'id' ifAbsent: []).
	self name: (aDictionary at: 'name' ifAbsent: []).
	self uid: (aDictionary at: 'uid' ifAbsent: []).
	self cache: (aDictionary at: 'cache' ifAbsent: []).
	self start: (aDictionary at: 'start' ifAbsent: []).
	self min: (aDictionary at: 'min' ifAbsent: []).
	self max: (aDictionary at: 'max' ifAbsent: []).
	self step: (aDictionary at: 'step' ifAbsent: []).
	self cycle: (aDictionary at: 'cycle' ifAbsent: []).
	
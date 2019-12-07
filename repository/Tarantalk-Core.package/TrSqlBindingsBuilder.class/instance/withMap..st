actions
withMap: aDictionary
	aDictionary asDictionary keysAndValuesDo: [ :key :value |
		self at: key put: value	
	]
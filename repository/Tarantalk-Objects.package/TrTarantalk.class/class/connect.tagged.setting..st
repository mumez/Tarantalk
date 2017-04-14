instance creation
connect: uriString tagged: connectionTag setting: settingBlock
	| talk |
	talk := self named: (connectionTag asString, '#' ,uriString) ifAbsentPut: [  
		self new
	].
	^talk initialize: uriString setting: settingBlock
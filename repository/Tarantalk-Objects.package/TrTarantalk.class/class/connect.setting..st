instance creation
connect: uriString setting: settingBlock
	| talk |
	talk := self named: uriString ifAbsentPut: [  
		self new
	].
	^talk initialize: uriString setting: settingBlock
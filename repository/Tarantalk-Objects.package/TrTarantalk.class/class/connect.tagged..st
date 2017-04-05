instance creation
connect: uriString tagged: connectionTag 
	| talk |
	talk := self named: (connectionTag asString, '#' ,uriString) ifAbsentPut: [  
		self new
	].
	^talk initialize: uriString 
instance creation
connect: uriString 
	| talk |
	talk := self named: uriString ifAbsentPut: [  
		self new
	].
	^talk initialize: uriString 
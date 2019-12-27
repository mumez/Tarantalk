testing
testUseSequence
	| talk seq |
	talk := self tarantalk.
	seq := talk ensureSequenceNamed: 'trt_testUseSequence' setting: [:opts |
		opts min: -6; max: -1; step: -3; start: -2; cyclic 
	].
	[ 
	self assert: seq next equals: -2.
	self assert: seq next equals: -5. "-2 + (-3) == -5."
	self assert: seq next equals: -1. "-5 + (-3) < -6, which is overflow, causing cycle, and max == -1"
	self assert: seq next equals: -4.
	] ensure: [  
	seq drop sync
	]
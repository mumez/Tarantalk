testing
testBasicSequence
	| talk seq |
	talk := self tarantalk.
	seq := talk ensureSequenceNamed: 'trt_testBasicSequence'.
	[  
	self assert: seq next equals: 1.
	self assert: seq next equals: 2.
	seq reset sync.
	self assert: seq next equals: 1.
	(seq set: 10) sync.
	self assert: seq next equals: 11.
	(seq alterSetting: [:opts | opts step: 5 ]) sync.
	self assert: seq next equals: 16
	] ensure: [  
	seq drop sync
	]
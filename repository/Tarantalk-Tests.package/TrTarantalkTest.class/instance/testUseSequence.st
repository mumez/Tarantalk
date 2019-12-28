testing
testUseSequence
	| talk space primarySeq primaryIndex tuples |
	talk := self tarantalk.
	space := talk ensureSpaceNamed: 'trt_testUseSequence'.
	primarySeq := talk ensureSequenceNamed: 'trt_testUseSequence_Seq1' setting: [:opts | opts start: 10].
	primaryIndex := space ensurePrimaryIndexSetting: [:opts | opts sequence: primarySeq].
	
	[
	space truncate sync.
	
	space insert: {nil. 'one'}.
	space insert: {nil. 'two'}.
	space insert: {nil. 'three'}.
	
	tuples := primaryIndex selectAll.	
		
	self assert: tuples size equals: 3.
	self assert: tuples first equals: #(10 'one').
	self assert: tuples second equals: #(11 'two').
	self assert: tuples third equals: #(12 'three').
	
	] ensure: [ 
	(primaryIndex alterSetting: [ :opts | opts sequenceOff]) sync.
	primarySeq drop sync.
	space drop sync
	]
	
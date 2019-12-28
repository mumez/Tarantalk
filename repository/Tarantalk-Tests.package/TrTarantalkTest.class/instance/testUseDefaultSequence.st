testing
testUseDefaultSequence
	| talk space primaryIndex tuples |
	talk := self tarantalk.
	space := talk ensureSpaceNamed: 'trt_testUseDefaultSequence'.
	primaryIndex := space ensurePrimaryIndexSetting: [:opts | opts sequenceOn].
	
	[
	space truncate sync.
	
	space insert: {nil. 'One'}.
	space insert: {nil. 'Two'}.
	space insert: {nil. 'Three'}.
	
	tuples := primaryIndex selectAll.	
		
	self assert: tuples size equals: 3.
	self assert: tuples first equals: #(1 'One').
	self assert: tuples second equals: #(2 'Two').
	self assert: tuples third equals: #(3 'Three').
	
	] ensure: [ 
	(primaryIndex alterSetting: [ :opts | opts sequenceOff]) sync.
	space drop sync
	]
	
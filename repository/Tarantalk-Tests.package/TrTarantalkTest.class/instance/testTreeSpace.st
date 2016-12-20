testing
testTreeSpace
	| talk space tuples |
	talk := self tarantalk.
	space := talk ensureSpaceNamed: 'trt_testTreeSpace'.
	space truncate.
	space ensurePrimaryIndex.
	space ensureSecondaryIndexSetting: [:opts | opts  partsTypes: #(#string) ].
	self assert: (space size = 0).
	space add: #('pharaoh' 1); add: #('pharaonic' 2); add: #('pharm' 3); add: #('pharmacy' 4); add: #('pharo' 5); add: #('pharos' 6); add: #('pharsalia' 7).
	self assert: (space size = 7).
	tuples := space selectAll.
	self assert: (tuples size = 7).
	self assert: (tuples first = #(1 'pharaoh' 1)).
	self assert: (tuples last = #(7 'pharsalia' 7)).
	tuples := space ensureSecondaryIndex select: #>= having: 'pharo'.
	self assert: (tuples size = 3).
	self assert: (tuples first = #(5 'pharo' 5)).
	self assert: (tuples last = #(7 'pharsalia' 7)).
	space truncate.
	self assert: (space size = 0).
	space drop.
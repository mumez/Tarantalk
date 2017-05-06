testing
testCombinedKeysTreeSpace
	| talk space tuples |
	talk := self tarantalk.
	space := talk ensureSpaceNamed: 'trt_testCombinedKeysTreeSpace'.
	space ensurePrimaryIndex.
	space ensureSecondaryIndexSetting: [:opts | opts  partsTypes: #(#string #unsigned) ].
	self assert: (space size = 0).
	space add: #('core' 1); add: #('core' 2); add: #('core' 3); add: #('tests' 1); add: #('tests' 2); add: #('tests' 3); add: #('tests' 4).
	self assert: (space size = 7).
	tuples := space selectAll.
	self assert: (tuples size = 7).
	tuples := space ensureSecondaryIndex selectHaving: #('core').
	self assert: (tuples size = 3).
	tuples := space ensureSecondaryIndex selectHaving: #('tests').
	self assert: (tuples size = 4).
	tuples := space ensureSecondaryIndex selectHaving: #('tests' 2).
	self assert: (tuples size = 1).
	self assert: (tuples first = (#(5 'tests' 2))).
	(space truncate) value.
	self assert: (space size = 0).
	space drop.
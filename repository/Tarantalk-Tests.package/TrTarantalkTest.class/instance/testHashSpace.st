testing
testHashSpace
	| talk space |
	talk := self tarantalk.
	space := talk ensureSpaceNamed: 'trt_testHashSpace'.
	space ensurePrimaryHashIndex.
	self assert: (space size = 0).
	space at: 'smalltalk' put: 'cool'.
	self assert: (space size = 1).
	self assert: (space at: 'smalltalk') = 'cool'.
	space at: 'lua' ifAbsentPut: ['hot'].
	self assert: (space at: 'lua') = 'hot'.
	self assert: (space size = 2).
	space removeKey: 'lua'.
	self assert: (space at: 'lua' ifAbsent: []) = nil.
	self assert: (space size = 1).
	space truncate.
	self assert: (space size = 0).
	space drop.
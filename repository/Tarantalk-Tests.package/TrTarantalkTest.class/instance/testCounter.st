testing
testCounter
	| talk space |
	talk := self tarantalk.
	space := talk ensureSpaceNamed: 'trt_testCounter'.
	space ensurePrimaryHashIndex.
	self assert: (space size = 0).
	space at: 'smalltalk' plus: 1.
	self assert: (space size = 1).
	self assert: ((space at: 'smalltalk') = 1).
	space at: 'smalltalk' plus: 1.
	space at: 'smalltalk' plus: 1.
	self assert: ((space at: 'smalltalk') = 3).
	space at: 'smalltalk' minus: 1.
	self assert: ((space at: 'smalltalk') = 2).
	space at: 'smalltalk' minus: 1.
	self assert: ((space at: 'smalltalk') = 1).
	space at: 'smalltalk' plus: 5.
	self assert: ((space at: 'smalltalk') = 6).
	(space truncate) value.
	self assert: (space size = 0).
	space drop.
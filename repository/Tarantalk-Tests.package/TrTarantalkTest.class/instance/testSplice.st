testing
testSplice
	| talk space |
	talk := self tarantalk.
	space := talk ensureSpaceNamed: 'trt_testSplice'.
	space ensurePrimaryHashIndex.
	(space truncate) value.
	self assert: (space size = 0).
	space at: 'smalltalk' splice: 'cool' from: 0 size: 4.
	self assert: (space size = 1).
	self assert: ((space at: 'smalltalk') = 'cool').
	space at: 'smalltalk' splice: 'C' from: 0 size: 1.
	self assert: ((space at: 'smalltalk') = 'Cool').
	space at: 'smalltalk' splice: '!!' from: -1 size: 2.
	self assert: ((space at: 'smalltalk') = 'Cool!!').
	space at: 'smalltalk' splice: '?' from: 1 size: 5.
	self assert: ((space at: 'smalltalk') = 'C?').
	(space truncate) value.
	self assert: (space size = 0).
	space drop.
testing
testAtAddAndRemoveLast
	| talk space |
	talk := self tarantalk.
	space := talk ensureSpaceNamed: 'trt_testAtAddAndRemove'.
	space ensurePrimaryHashIndex.
	(space truncate) value.
	self assert: (space size = 0).
	space at: 'smalltalk' add: 1.
	self assert: (space size = 1).
	self assert: ((space getAt: 'smalltalk') = #('smalltalk' 1)).
	space at: 'smalltalk' add: 2.
	self assert: ((space getAt: 'smalltalk') = #('smalltalk' 1 2)).
	space at: 'smalltalk' add: 3.
	self assert: ((space getAt: 'smalltalk') = #('smalltalk' 1 2 3)).
	space at: 'smalltalk' removeLast: 1.
	self assert: ((space getAt: 'smalltalk') = #('smalltalk' 1 2)).
	space at: 'smalltalk' removeLast: 2.
	self assert: ((space getAt: 'smalltalk') = #('smalltalk')).
	(space truncate) value.
	self assert: (space size = 0).
	space drop.
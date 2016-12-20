testing
testAtAddAndRemoveFirst
	| talk space |
	talk := self tarantalk.
	space := talk ensureSpaceNamed: 'trt_testAtAddAndRemoveFirst'.
	space ensurePrimaryHashIndex.
	space truncate.
	self assert: (space size = 0).
	space at: 'smalltalk' add: 1.
	self assert: (space size = 1).
	self assert: ((space getAt: 'smalltalk') = #('smalltalk' 1)).
	space at: 'smalltalk' add: 2.
	self assert: ((space getAt: 'smalltalk') = #('smalltalk' 1 2)).
	space at: 'smalltalk' add: 3.
	self assert: ((space getAt: 'smalltalk') = #('smalltalk' 1 2 3)).
	space at: 'smalltalk' removeFirst: 2.
	self assert: ((space getAt: 'smalltalk') = #('smalltalk' 3)).
	space at: 'smalltalk' removeFirst: 1.
	self assert: ((space getAt: 'smalltalk') = #('smalltalk')).
	space truncate.
	self assert: (space size = 0).
	space drop.
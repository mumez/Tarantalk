testing
testAsyncHashSpace
	| talk space |
	talk := self tarantalk.
	space := talk ensureSpaceNamed: 'trt_testAsyncHashSpace'.
	space ensurePrimaryHashIndex.
	space truncate sync.
	self assert: space size equals: 0.
	space at: 'smalltalk' put: 'cool'.
	self assert: space size equals: 1.
	
	(space futureAt: 'smalltalk')
		andThen: [ :val | self assert: val equals: 'cool' ].
	(space futureAt: 'ruby' ifAbsent: [ '???' ])
		andThen: [ :val | self assert: val equals: '???' ].
	(space futureAt: 'ruby' ifAbsentPut: [ 'hot' ])
		andThen: [ :val | self assert: val equals: 'hot' ].
	(space futureValuesAt: 'smalltalk')
		andThen: [ :val | self assert: val equals: #('cool') ].
	(space removeKey: 'ruby') future
		andThen: [ :val | 
			self assert: space size equals: 1.
			space truncate future
				andThen: [ :v | 
					self assert: space size equals: 0.
					space drop ] ]
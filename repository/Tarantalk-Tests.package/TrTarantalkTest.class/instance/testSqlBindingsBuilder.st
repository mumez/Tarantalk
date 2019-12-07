testing
testSqlBindingsBuilder
	| builder bindings |
	builder := TrSqlBindingsBuilder new.
	builder add: 3.
	builder at: 'nm2' put: 'b'.
	builder add: 5.
	builder at: 'nm1' put: 'c'.
	builder suffixToAt.
	builder at: 'nm3' put: 'd'.
	builder atIndex: 5 put: 'e'.
	bindings := builder bindings.
	self assert: bindings size equals: 6.
	self assert: (bindings at: 1) equals: 3.
	self assert: ((bindings at: 2) at: ':nm2') equals: 'b'.
	self assert: (bindings at: 3) equals: 5.
	self assert: ((bindings at: 4) at: ':nm1') equals: 'c'.
	self assert: ((bindings at: 5) at: '@nm3') equals: 'd'.
	self assert: ((bindings at: 6) at: '$5') equals: 'e'.
accessing
root
	| par |
	par := self parent.
	[ par parent isNil ] whileFalse: [ par := par parent ].
	^ par
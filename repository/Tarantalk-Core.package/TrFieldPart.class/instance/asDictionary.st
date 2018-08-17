converting
asDictionary
	| dict |
	dict := { 
		'name' -> self name.
		'type' -> self type.
	 } asDictionary.
	self isNullable ifNotNil: [:val | dict at: 'is_nullable' put: val].
	^dict 
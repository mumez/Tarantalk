converting
asArray
	self isNullable ifNil: [^ Array with: self name with: self type].
	
	^ { 
		1 -> self name.
		2 -> self type.
		'is_nullable' -> self isNullable.
	 } asDictionary 
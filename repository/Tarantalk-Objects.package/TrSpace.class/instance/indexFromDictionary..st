factory
indexFromDictionary: aDictionary
	aDictionary ifNil: [ ^nil ].
	^ (self indexClass on: self) fromDictionary: aDictionary
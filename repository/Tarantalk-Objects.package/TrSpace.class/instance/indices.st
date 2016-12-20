accessing-index
indices
	^ self basicIndices values
		inject: Set new
		into: [ :sum :each | 
			sum
				add: (self indexFromDictionary: each);
				yourself ]
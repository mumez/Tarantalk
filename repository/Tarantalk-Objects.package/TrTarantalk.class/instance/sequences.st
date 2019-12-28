actions-sequence
sequences
	^ (self evalWithReturn: (self fullPropertyName: 'sequence'))
		valueThen: [ :ret | 
			(ret first collect: [ :each | (self sequenceClass on: self) fromDictionary: each ]) values ]
		ifFailed: [ :ex | ex pass ]
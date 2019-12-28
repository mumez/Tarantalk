actions-sequence
ensureSequenceNamed: spaceName setting: creationSettingsBlock
	^ self
		syncRetryingDo: [ (self
				createSequenceNamed: spaceName
				setting: [ :opts | 
					opts ifDuplicateUse: true.
					creationSettingsBlock cull: opts ])
				valueThen: [ :ret | (self sequenceClass on: self) fromDictionary: ret first]
				ifFailed: [ :ex | ex pass ] ]
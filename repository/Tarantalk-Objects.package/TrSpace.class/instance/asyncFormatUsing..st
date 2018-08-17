formatting
asyncFormatUsing: creationSettingsBlock
	| optionsBuilder |
	optionsBuilder := TrOptionsBuilder forCreateSpace.
	^ self
		evalWithReturn: (self fullMethodName: 'format(...)')
		arguments: (Array with: (optionsBuilder formatUsing: creationSettingsBlock))
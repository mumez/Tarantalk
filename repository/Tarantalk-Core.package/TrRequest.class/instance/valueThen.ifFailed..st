controlling
valueThen: returnProcessingBlock ifFailed: errorHandlingBlock
	^ [ self valueThen: returnProcessingBlock ]
		on: Error
		do: [ :ex | 
			ex isTarantoolError
				ifFalse: [ ex pass ].
			errorHandlingBlock cull: ex ]
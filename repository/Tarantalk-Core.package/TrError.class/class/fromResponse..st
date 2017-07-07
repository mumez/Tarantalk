instance creation
fromResponse: aTrResponse
	| inst |
	inst := self new.
	inst code: aTrResponse code - 16r8000.
	inst reason: aTrResponse errorData.
	^inst
instance creation
fromResponse: aTrResponse
	| code inst |
	code := aTrResponse code - 16r8000.
	inst := (self classForCode: code) new.
	inst code: code.
	inst reason: aTrResponse errorData.
	^inst
instance creation
name: aName type: aType
	| inst |
	inst := self new.
	inst name: aName.
	inst type: aType.
	^inst
	
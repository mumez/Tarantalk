accessing
stick
	self parent ifNotNil: [:par | ^ par stick ].
	stick ifNil: [ ^nil ].
	stick isReleased ifTrue: [stick releaseThenConnect ].
	^stick
private
safeElement: anObject
	anObject ifNil: [ ^nil ].
	anObject ifEmpty: [ ^nil ].
	^ anObject first
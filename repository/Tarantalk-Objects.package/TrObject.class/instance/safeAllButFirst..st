private
safeAllButFirst: anObject
	anObject ifNil: [ ^#() ].
	anObject ifEmpty: [ ^#() ].
	^ anObject allButFirst
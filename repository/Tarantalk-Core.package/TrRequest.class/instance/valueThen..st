controlling
valueThen: returnProcessingBlock
	| val |
	val := self value.
	(val isKindOf: Error) ifTrue: [ ^val signal ].
	^returnProcessingBlock value: val
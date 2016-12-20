building
buildOperations
	^self operations asArray collect: [ :each | each asMpConverted  ]
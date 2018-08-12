converting
asPartsArguments
	^self parts asArray gather: [ :each | each asArray  ]
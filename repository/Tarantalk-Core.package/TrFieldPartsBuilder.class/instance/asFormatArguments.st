converting
asFormatArguments
	^self parts asArray collect: [ :each | each asDictionary  ]
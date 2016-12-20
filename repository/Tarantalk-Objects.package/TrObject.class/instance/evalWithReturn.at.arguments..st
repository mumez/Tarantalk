evaluating
evalWithReturn: expression at: key arguments: arguments
	^self stick eval: 'return (', expression, ').', key arguments: arguments
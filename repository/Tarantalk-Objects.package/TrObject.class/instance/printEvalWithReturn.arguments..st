private
printEvalWithReturn: expression arguments: arguments
	^self stick eval: 'return print(', expression, ')' arguments: arguments
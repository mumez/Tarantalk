private
printEvalWithReturn: expression
	^self stick eval: 'return print(', expression, ')'
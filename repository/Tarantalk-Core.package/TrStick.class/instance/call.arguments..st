actions-calling
call: funcName arguments: args
	| request |
	request := self newRequest call: funcName arguments: args.
	^self sendRequest: request
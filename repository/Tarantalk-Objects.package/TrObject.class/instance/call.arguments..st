stored functions
call: funcName arguments: args
	^(self asyncCall: funcName arguments: args) value
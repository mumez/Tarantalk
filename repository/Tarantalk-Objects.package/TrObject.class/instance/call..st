stored functions
call: funcName
	^(self asyncCall: funcName) value
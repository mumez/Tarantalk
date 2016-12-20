actions
call: funcName arguments: args
	self type: (self settings useOldCall ifTrue: [ TrValueConstants call16] ifFalse: [TrValueConstants call]).
	self bodyMap at: TrKeyConstants functionName put: funcName.
	self bodyMap at: TrKeyConstants tuple put: args.
	
	
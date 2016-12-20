actions
eval: expression arguments: args
	self type: TrValueConstants eval.
	self bodyMap at: TrKeyConstants expr put: expression.
	self bodyMap at: TrKeyConstants tuple put: args.
	
	
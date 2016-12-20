selecting
getAt: keys
	 ^(self asyncGetAt: keys) valueThen: [ :ret | ret ifEmpty: [ nil ] ifNotEmpty: [ ret first ] ]
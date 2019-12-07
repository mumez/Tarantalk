actions
at: paramName put: aValue suffix: suffix
	| namedParam |
	namedParam := self newParamNamed: paramName value: aValue suffix: suffix.
	self bindings add: namedParam
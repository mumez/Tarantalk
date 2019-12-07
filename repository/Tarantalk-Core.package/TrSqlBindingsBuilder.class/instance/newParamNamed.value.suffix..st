private
newParamNamed: paramName value: aValue suffix: suffix 
	^ Dictionary new
		at: suffix , paramName asString put: aValue;
		yourself
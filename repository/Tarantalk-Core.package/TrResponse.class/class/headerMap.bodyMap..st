instance creation
headerMap: headerMap bodyMap: bodyMap
	| inst |
	inst := self new.
	inst headerMap: headerMap bodyMap: bodyMap.
	^inst
response handling
handleResponse: aResponse
	| request |
	request := self requestsMap at: aResponse syncId ifAbsent: [ self requestClass newWithSettings: self settings].
	request handleResponse: aResponse.
	self requestsMap removeKey: aResponse syncId ifAbsent:[]
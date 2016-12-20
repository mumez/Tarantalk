initialize-release
headerMap: headerMap bodyMap: bodyMap
	self code: (headerMap at: TrKeyConstants typeCode ifAbsent: []).
	self syncId: (headerMap at: TrKeyConstants syncId ifAbsent: []).
	
	self data: (bodyMap at: TrKeyConstants data ifAbsent: []).
	self errorData: (bodyMap at: TrKeyConstants error ifAbsent: []).
	
initialize-release
headerMap: headerMap bodyMap: bodyMap
	self code: (headerMap at: TrKeyConstants typeCode ifAbsent: []).
	self syncId: (headerMap at: TrKeyConstants syncId ifAbsent: []).
	self schemaId: (headerMap at: TrKeyConstants schemaId ifAbsent: []).
	
	self data: (bodyMap at: TrKeyConstants data ifAbsent: []).
	self errorData: (bodyMap at: TrKeyConstants error ifAbsent: []).
	self metadata: (self metadataFrom: bodyMap).
	self sqlInfo: (self sqlInfoFrom: bodyMap).
	
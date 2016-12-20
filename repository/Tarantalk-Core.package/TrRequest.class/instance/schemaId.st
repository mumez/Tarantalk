accessing
schemaId
	^ self headerMap at: TrKeyConstants schemaId ifAbsent: [ ]
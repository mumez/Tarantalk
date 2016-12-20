accessing
syncId
	^ self headerMap at: TrKeyConstants syncId ifAbsent: [ ]
private
sqlInfoFrom: bodyMap
	| rawData |
	rawData := (bodyMap at: TrKeyConstants sqlInfo ifAbsent: [^nil]).
	^ TrSqlInfo on: rawData
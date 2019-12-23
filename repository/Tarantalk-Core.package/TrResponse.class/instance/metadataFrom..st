private
metadataFrom: bodyMap
	| rawData |
	rawData := (bodyMap at: TrKeyConstants metadata ifAbsent: [^nil]).
	^ TrMetadata on: rawData
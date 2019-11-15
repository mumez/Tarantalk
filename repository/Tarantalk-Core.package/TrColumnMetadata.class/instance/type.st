accessing
type
	^ type ifNil: [ type := self rawData at: self class fieldTypeKey ifAbsent: [] ]
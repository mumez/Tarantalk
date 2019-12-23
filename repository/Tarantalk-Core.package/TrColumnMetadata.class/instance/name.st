accessing
name
	^ name ifNil: [ name := self rawData at: self class fieldNameKey ifAbsent: []]
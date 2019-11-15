accessing
autoIncrementValue
	^self rawData at: self class autoIncrementKey ifAbsent: [ ]
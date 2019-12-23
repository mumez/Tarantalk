accessing
changedRowCount
	^self rawData at: self class rowCountKey ifAbsent: [ 0 ]
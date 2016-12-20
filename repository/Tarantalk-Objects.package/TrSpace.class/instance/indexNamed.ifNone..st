accessing-index
indexNamed: indexName ifNone: aBlock
	^(self indexNamed: indexName) ifNil: [aBlock cull: self ]
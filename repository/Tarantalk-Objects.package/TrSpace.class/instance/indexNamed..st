accessing-index
indexNamed: indexName
	^ (self evalWithReturn: (self fullIndexName: indexName) arguments: {}) valueThen: [:value |
			self indexFromDictionary: value first
	]
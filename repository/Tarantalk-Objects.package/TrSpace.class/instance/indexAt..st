accessing-index
indexAt: indexId
	^(self evalWithReturn: (self fullName, '.index[', indexId asString,']') arguments: {}) valueThen: [:value |
			self indexFromDictionary: value first
	]
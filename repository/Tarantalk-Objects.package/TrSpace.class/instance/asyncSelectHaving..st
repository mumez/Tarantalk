selecting
asyncSelectHaving: keys
	^self stick selectAt: self id having: (self ensureArray: keys)
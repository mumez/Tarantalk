updating
spliceHaving: keys fieldAt: fieldIndex value: newString from: position size: sizeInteger
	^ self
		updateHaving: keys
		performing:
			[ :ops | ops @ fieldIndex splice: newString from: position size: sizeInteger ]
upserting
at: key splice: newString from: fromIndex size: sizeInteger
	^ self
		upsert: (Array with: key with: newString)
		performing:
			[ :opts | opts @ 1 splice: newString from: fromIndex size: sizeInteger ]
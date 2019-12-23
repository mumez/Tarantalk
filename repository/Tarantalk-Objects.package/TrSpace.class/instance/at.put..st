dictionary-like
at: key put: aValue
	^ self upsert: (Array with: key with: aValue) performing: [:opts | opts @ 1 assign: aValue]
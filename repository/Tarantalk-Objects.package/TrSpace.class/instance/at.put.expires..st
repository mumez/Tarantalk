dictionary-like
at: key put: aValue expires: expireSeconds
	"For expirationd"
	self upsert: (Array with: key with: aValue with: expireSeconds) performing: [:opts | 
		opts @ 1 assign: aValue.
		opts @ 2 assign: expireSeconds
	] .
	^aValue
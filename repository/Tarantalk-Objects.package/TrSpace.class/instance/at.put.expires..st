dictionary-like
at: key put: aValue expires: expireUtcSeconds
	"For expirationd"
	self upsert: (Array with: key with: aValue with: expireUtcSeconds) performing: [:opts | 
		opts @ 1 assign: aValue.
		opts @ 2 assign: expireUtcSeconds
	] .
	^aValue
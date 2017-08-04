dictionary-like
at: key put: aValue expiresIn: seconds
	"For expirationd"
	^self at: key put: aValue expires: (DateAndTime now asUTC asUnixTime + seconds)
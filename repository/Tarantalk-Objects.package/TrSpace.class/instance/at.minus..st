upserting
at: key minus: aNumber
	^self upsert: (Array with: key with: aNumber) performing: [:opts | opts @ 1 subtract: aNumber] .
	
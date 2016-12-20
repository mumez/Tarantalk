upserting
at: key plus: aNumber
	^self upsert: (Array with: key with: aNumber) performing: [:opts | opts @ 1 add: aNumber] .
	
upserting
at: key removeFirst: times
	^self upsert: (Array with: key) performing: [:opts | opts @ 1 delete: times] .
	
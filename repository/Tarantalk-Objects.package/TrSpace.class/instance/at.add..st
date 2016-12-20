upserting
at: key add: value
	^self upsert: (Array with: key with: value) performing: [:opts | opts @ -1 insert: value] .
	
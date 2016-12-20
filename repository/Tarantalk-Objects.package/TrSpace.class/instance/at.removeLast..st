upserting
at: key removeLast: times
	^self upsert: (Array with: key) performing: [:opts | opts @ times negated delete: times] .
	
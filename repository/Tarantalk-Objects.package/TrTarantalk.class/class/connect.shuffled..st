instance creation
connect: uriString shuffled: shuffleNumber 
	| randomIndex |
	randomIndex := shuffleNumber atRandom.
	^self connect: uriString tagged: randomIndex 
private
newSyncId
	^ self mutex
		critical: [ idCounter > 4294967295 ifTrue: [ idCounter := 0 ].
			idCounter := idCounter + 1 ]
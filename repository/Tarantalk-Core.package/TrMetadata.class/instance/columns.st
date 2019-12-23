accessing
columns
	^columns ifNil: [ 
		columns := (1 to: self columnCount) collect: [ :idx | self columnAt: idx]
	 ]
accessing
userSpaces
	^ (self stick
		selectAt: self class vspaceId
		indexAt: 0
		having: self class userSpaceId
		offset: 0
		limit: self stick selectLimit
		iterator: #greaterThanEqual) value
		collect: [ :eachArray | (self spaceClass on: self) fromArray: eachArray ]
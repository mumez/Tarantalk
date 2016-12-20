accessing
selectLimit
	^ selectLimit ifNil: [ selectLimit := self settings defaultSelectLimit  ]
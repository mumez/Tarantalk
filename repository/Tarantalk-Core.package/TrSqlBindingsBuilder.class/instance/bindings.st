accessing
bindings
	^ bindings ifNil: [ bindings := OrderedCollection new ]
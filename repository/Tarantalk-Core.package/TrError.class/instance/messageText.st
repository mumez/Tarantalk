accessing
messageText
	^messageText ifNil: [ messageText := self kind, ':' ,self reason ]
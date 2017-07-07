accessing
successBlock
	^ successBlock ifNil: [ successBlock := self defaultSuccessBlock ]
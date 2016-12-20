accessing
spaces
	^ (self stick selectAt: self class vspaceId) value
		collect: [ :eachArray | 
			(self spaceClass on: self) fromArray: eachArray ]
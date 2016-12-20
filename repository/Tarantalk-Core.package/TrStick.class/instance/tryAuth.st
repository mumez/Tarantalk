reconnecting
tryAuth
	self passwordProvider ifNotNil: [ 
		self auth: self userName password: (self passwordProvider cull: self) 	
	]
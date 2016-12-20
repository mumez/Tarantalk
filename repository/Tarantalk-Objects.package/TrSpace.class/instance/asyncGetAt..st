selecting
asyncGetAt: keys
	 ^self stick getAt: self id indexAt: 0 having: (self ensureArray: keys)
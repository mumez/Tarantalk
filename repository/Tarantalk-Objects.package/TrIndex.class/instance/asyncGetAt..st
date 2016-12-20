selecting
asyncGetAt: keys
	^ self stick getAt: self spaceId indexAt: self id having: (self ensureArray: keys)
initialize-release
fromArray: anArray
	self id: (anArray at: 1)
				owner: (anArray at: 2)
				name: (anArray at: 3)
				engine: (anArray at: 4)
				fieldCount: (anArray at: 5)
				flags: (anArray at: 6)
				format: (anArray at: 7)
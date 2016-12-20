initialize-release
fromDictionary: aDictionary
	id := aDictionary at: 'id' ifAbsent: [].
	name := aDictionary at: 'name' ifAbsent: [''].
	type := aDictionary at: 'type' ifAbsent: [].
	spaceId := aDictionary at: 'space_id' ifAbsent: [].
	isUnique := aDictionary at: 'unique' ifAbsent: [true].
	parts := aDictionary at: 'parts' ifAbsent: [#()] 
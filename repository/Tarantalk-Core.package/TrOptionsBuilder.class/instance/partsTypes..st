actions-index
partsTypes: partsTypeSymbols
	| parts |
	parts := OrderedCollection new.
	partsTypeSymbols
		withIndexDo: [ :each :idx | 
			parts
				add: idx + self fieldOffset;
				add: (self perform: each) ].
	self parts: parts asArray
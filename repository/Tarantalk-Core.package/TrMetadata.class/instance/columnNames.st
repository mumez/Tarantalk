accessing
columnNames
	^self columns collect: [ :each | each lowerName ]
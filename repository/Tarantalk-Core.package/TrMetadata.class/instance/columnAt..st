accessing
columnAt: index
	| columnRawData |
	columnRawData := self rawData at: index.
	columnRawData ifNil: [ ^nil ].
	^TrColumnMetadata on: columnRawData
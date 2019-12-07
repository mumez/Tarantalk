accessing-sql
sqlChangedRowCount
	| info |
	info := self sqlInfo.
	info ifNil: [ ^0 ].
	^info changedRowCount
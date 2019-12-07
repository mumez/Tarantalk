accessing-sql
changedRowCount
	| info |
	info := self sqlInfo.
	info ifNil: [ ^0 ].
	^info changedRowCount
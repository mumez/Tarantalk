actions
alterSetting: settingsBlock
	| optionsBuilder |
	optionsBuilder := TrSequenceOptionsBuilder new.
	settingsBlock value: optionsBuilder.
	^self alter: optionsBuilder options
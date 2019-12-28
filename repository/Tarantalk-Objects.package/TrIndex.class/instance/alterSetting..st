altering
alterSetting: settingsBlock
	| optionsBuilder |
	optionsBuilder := TrOptionsBuilder forCreateIndex.
	settingsBlock value: optionsBuilder.
	^self alter: optionsBuilder options
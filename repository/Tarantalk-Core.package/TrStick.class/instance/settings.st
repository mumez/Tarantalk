accessing
settings
	^ settings ifNil: [settings := TrSettings default deepCopy ]
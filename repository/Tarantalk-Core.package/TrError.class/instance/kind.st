accessing
kind
	^self class codeSymbolArray at: self code + 1 ifAbsent: [ self class codeSymbolArray first ]
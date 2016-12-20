dictionary-like
removeKey: key
	 ^self deleteHaving: (Array with: key)
dictionary-like
at: key
	 ^self safeElement: (self safeAllButFirst: (self getAt: key)) 
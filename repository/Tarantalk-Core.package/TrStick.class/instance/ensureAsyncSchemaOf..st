private
ensureAsyncSchemaOf: urlString
	 (urlString findString: '://') = 0 ifTrue: [ ^ 'async://', urlString ].
	^urlString
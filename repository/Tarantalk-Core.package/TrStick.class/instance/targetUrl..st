accessing
targetUrl: targetUrlString
	"Accepts tarantool style uri"
	"https://tarantool.org/doc/reference/configuration/index.html#index-uri"
	| uri |
	uri := targetUrlString asString.
	(targetUrlString findString: '://') = 0 ifTrue: [ uri := 'async://', uri ].
	self parseUrl: uri.
	^super targetUrl: uri
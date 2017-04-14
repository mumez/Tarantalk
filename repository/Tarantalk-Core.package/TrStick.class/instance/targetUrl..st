accessing
targetUrl: targetUrlString
	"Accepts tarantool style uri"
	"https://tarantool.org/doc/reference/configuration/index.html#index-uri"
	| uri |
	uri := self ensureAsyncSchemaOf: targetUrlString asString.
	self parseUrl: uri.
	^super targetUrl: uri
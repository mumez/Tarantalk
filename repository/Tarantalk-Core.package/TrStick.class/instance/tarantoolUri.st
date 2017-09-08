accessing
tarantoolUri
	^ self targetUrl copyFrom: 9 "('async://' size) + 1"
		 to: self targetUrl size
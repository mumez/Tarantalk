*Tarantalk-TaskIt
asTaskFor: waitTimeoutSeconds
	^ TKTTask valuable: [ | proxy val |
		proxy := self proxyFor: waitTimeoutSeconds.
		(val := proxy value) isError ifTrue: [ val signal ].
		proxy
	]
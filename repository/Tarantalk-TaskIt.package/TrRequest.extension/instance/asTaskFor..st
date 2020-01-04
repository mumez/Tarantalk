*Tarantalk-TaskIt
asTaskFor: waitTimeoutSeconds
	^ TKTTask valuable: [ | proxy |
		proxy := self proxyFor: waitTimeoutSeconds.
		proxy value.
		proxy isError ifTrue: [ proxy signal ].
		proxy
	]
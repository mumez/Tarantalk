*Tarantalk-TaskIt
asTask
	^ TKTTask valuable: [ | proxy |
		proxy := self proxy.
		proxy value.
		proxy
	]
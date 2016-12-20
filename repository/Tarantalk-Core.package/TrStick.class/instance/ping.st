sending
ping
	| request |
	request := self newRequest ping.
	^self sendRequest: request
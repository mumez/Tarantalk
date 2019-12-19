private
retry: aSyncBlock times: anInteger
	| counter |
	counter := anInteger.
	counter := counter - 1.
	[aSyncBlock value] on: TKTTimeoutException do: [:ex |
		counter <= 0 ifTrue: [ ex pass ].
		Processor yield.
		500 milliSeconds wait.
		self retry: aSyncBlock times: counter
	].
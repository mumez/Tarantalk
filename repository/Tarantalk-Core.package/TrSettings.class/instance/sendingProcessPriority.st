accessing
sendingProcessPriority
	"For vinyl possible bug, we need to use higher priority"
	^self at: #sendingProcessPriority ifAbsentPut: [self defaultSendingProcessPriority]
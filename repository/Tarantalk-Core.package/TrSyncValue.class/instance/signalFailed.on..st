private
signalFailed: error on: aResponse
	response := aResponse.
	value := error.
	self semaphore signal
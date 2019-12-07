private
signalDone: data on: aResponse
	response := aResponse.
	value := data.
	self semaphore signal
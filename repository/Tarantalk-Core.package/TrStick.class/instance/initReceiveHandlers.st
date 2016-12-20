initialize-release
initReceiveHandlers
	self onReceive: [ :stream |  self readPacketFrom: stream].
	self onData: [ :resp | self handleResponse: resp].
private
createSyncValueFor: waitTimeoutSeconds
	^ self syncValueClass request: self waitTimeoutSeconds: waitTimeoutSeconds.
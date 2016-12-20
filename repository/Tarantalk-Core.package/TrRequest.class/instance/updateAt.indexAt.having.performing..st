actions-updating
updateAt: spaceId indexAt: indexId  having: keys performing: operationsBuildingBlock	
	| builder |
	builder := TrUpdateOperationsBuilder new.
	operationsBuildingBlock value: builder.
	self updateAt: spaceId indexAt: indexId  having: keys operations: builder buildOperations
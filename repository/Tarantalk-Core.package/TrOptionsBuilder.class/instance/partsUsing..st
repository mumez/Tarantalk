actions-index
partsUsing: partsBuilderBlock
	| partsBuilder args |
	partsBuilder := TrFieldPartsBuilder new.
	partsBuilderBlock value: partsBuilder.
	args := partsBuilder asPartsArguments.
	self parts: args.
	^ args
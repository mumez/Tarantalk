actions-space
formatUsing: formatBuilderBlock
	| partsBuilder args |
	partsBuilder := TrFieldPartsBuilder new.
	formatBuilderBlock value: partsBuilder.
	args := partsBuilder asFormatArguments.
	self format: args.
	^ args
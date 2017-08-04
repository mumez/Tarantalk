administration
snapshot
	^ (self evalWithReturn:  'box.snapshot()') valueThen: [:ret | ret first].
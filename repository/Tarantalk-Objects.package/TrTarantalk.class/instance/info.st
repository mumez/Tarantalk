administration
info
	^ (self evalWithReturn:  'box.info()') valueThen: [:ret | ret first].
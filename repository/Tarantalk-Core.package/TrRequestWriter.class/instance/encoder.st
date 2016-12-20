accessing
encoder
	^ encoder
		ifNil: [ encoder := MpEncoder new.
			"encoder settings encodeMode: #loose."
			encoder ]
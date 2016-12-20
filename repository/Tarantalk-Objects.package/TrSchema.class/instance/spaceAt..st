actions-space
spaceAt: spaceId
	 | arrays |
	arrays :=(self stick getAt: self class vspaceId having: spaceId) value.
	arrays ifEmpty: [ ^nil ].
	^(self spaceClass on: self) fromArray: (arrays at: 1)
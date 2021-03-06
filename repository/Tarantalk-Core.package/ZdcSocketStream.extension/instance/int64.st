*Tarantalk-Core-optimization
int64
	"Answer the next signed, 32-bit integer from this (binary) stream."
	"Details: As a fast check for negative number, check the high bit of the first digit"

	| n firstDigit |
	n := firstDigit := self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	n := (n bitShift: 8) + self next.
	firstDigit >= 128 ifTrue: [n := -16r10000000000000000 + n].  "decode negative 64-bit integer"
	^ n

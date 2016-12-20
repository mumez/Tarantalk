initialize-release
from: fromIndex size: sizeInteger value: newString
	self position: fromIndex.
	self size: sizeInteger.
	self operator: ':' value: newString
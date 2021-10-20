printing
printOutputOn: aStream

	aStream nextPutAll: self matrix printString; nextPutAll: ' [image] '

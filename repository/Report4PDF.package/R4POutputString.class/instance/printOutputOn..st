printing
printOutputOn: aStream

	aStream nextPutAll: self matrix printString; 
		space; nextPutAll: self string asString

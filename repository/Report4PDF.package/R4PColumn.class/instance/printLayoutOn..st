printing
printLayoutOn: aStream

	aStream cr; tab; nextPutAll: 'columnWidth: '; nextPutAll: self columnWidth printString

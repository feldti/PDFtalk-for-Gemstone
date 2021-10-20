printing
printOn: aStream

	super printOn: aStream.

	aStream 
		space; nextPutAll: self pageWidth printString;
		space; nextPutAll: ' x '; nextPutAll: self pageHeight printString;
		space; space; nextPutAll: self margin printString

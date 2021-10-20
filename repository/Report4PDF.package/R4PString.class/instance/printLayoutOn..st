printing
printLayoutOn: aStream

	super printLayoutOn: aStream.
	aStream 
		cr; tab; nextPutAll: self string printString; 
		cr; tab; nextPutAll: 'stringWidth: '; nextPutAll: self stringWidth printString; 
		cr; tab; nextPutAll: 'lineBreak: '; nextPutAll: self lineBreak printString; 
		yourself

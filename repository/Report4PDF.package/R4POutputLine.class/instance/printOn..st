printing
printOn: aStream

	super printOn: aStream.

	aStream tab; nextPutAll: self startPoint printString; 
		nextPutAll: ' line: '; nextPutAll: self endPoint printString;
		tab; nextPutAll: self width printString

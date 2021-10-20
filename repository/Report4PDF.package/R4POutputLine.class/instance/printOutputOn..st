printing
printOutputOn: aStream

	aStream nextPutAll: self startPoint printString; 
		nextPutAll: ' line: '; nextPutAll: self endPoint printString;
		space; nextPutAll: self width printString

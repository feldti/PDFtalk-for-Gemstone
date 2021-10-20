printing
printOutputOn: aStream

	aStream nextPutAll: 'top: '; nextPutAll: self left printString; 
		tab; nextPutAll: 'bottom: '; nextPutAll: self bottom printString; 		
		tab; nextPutAll: 'width: '; nextPutAll: self width printString; 		
		tab; nextPutAll: 'height: '; nextPutAll: self height printString; 		
		tab; nextPutAll: 'color: '; nextPutAll: self color printString

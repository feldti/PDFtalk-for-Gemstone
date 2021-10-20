printing
printOn: aStream

	super printOn: aStream.
	aStream
		cr; tab; nextPutAll: 'currentY: '; nextPutAll: self currentY printString; 
		cr; tab; nextPutAll: 'maximumY: '; nextPutAll: self maximumY printString; 
		cr; tab; nextPutAll: 'currentPage: '; nextPutAll: self currentPageNumber printString; 
			nextPutAll: ' of: '; nextPutAll: self outputPages size printString; 
		cr; tab; nextPutAll: 'minimumY: '; nextPutAll: self currentPage minimumY printString; 
		yourself

printing
printLayoutOn: aStream

	super printLayoutOn: aStream. 
	aStream cr; tab; nextPutAll: 'row: '; nextPutAll: self displayRowIndex.

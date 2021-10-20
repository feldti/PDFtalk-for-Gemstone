printing
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: ' Y = '; nextPutAll: self currentY printString; 
		nextPutAll: ' of '; nextPutAll: self maximumY printString; 
		nextPutAll: ' @ '; nextPutAll: self outputPageIndex printString.

	self nextPage notNil ifTrue: [aStream nextPutAll: ' --> nextPage ('; nextPutAll:  self nextPageSize printString, ')']

printing
printOn: aStream

	super printOn: aStream.
	
	aStream nextPutAll: ' column: '; nextPutAll: self displayColumnIndex. 
	self cells isEmpty ifTrue: [^aStream nextPutAll: ' <empty>'].
	aStream space; nextPutAll: self cells first displayString

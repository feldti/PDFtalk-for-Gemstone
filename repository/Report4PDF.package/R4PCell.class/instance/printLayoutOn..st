printing
printLayoutOn: aStream

	super printLayoutOn: aStream.

	aStream cr; tab; nextPutAll: 'row: '; nextPutAll: self displayRowIndex. 
	aStream cr; tab; nextPutAll: 'column: '; nextPutAll: self displayColumnIndex. 
	self spansColumns ifTrue: [aStream cr; tab; nextPutAll: 'columnSpan: '; nextPutAll: self columnSpan printString].
	self spansRows ifTrue: [aStream cr; tab; nextPutAll: 'rowSpan: '; nextPutAll: self rowSpan printString].

	self sections isEmpty ifTrue: [^self].
	aStream cr; tab; nextPutAll: self sections first displayString printString

printing
printLayoutOn: aStream

	super printLayoutOn: aStream.

	aStream cr; tab; nextPutAll: 'bullet: '; nextPutAll: self bulletText displayString.

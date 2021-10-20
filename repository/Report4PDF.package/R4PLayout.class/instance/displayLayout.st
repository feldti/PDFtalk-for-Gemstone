printing
displayLayout

	| stream | 

	stream := WriteStream on: self stringClass new.
	stream nextPutAll: '#('; 
		nextPutAll: self layoutTop printString; space; 
		nextPutAll: self displayLayoutRight; space; 
		nextPutAll: self displayLayoutBottom; space; 
		nextPutAll: self layoutLeft printString; nextPut: $); 
		yourself.
	^stream contents

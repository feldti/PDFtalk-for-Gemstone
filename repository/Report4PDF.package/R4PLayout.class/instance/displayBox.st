printing
displayBox

	^[ | stream | 
	stream := WriteStream on: self stringClass new.
	stream nextPutAll: '#('; 
		nextPutAll: self boxTop printString; space; 
		nextPutAll: self boxRight printString; space; 
		nextPutAll: self displayBoxBottom; space; 
		nextPutAll: self boxLeft printString; nextPut: $); 
		yourself.
	stream contents]
		on: self errorClass
		do: [:ex | '#(? ? ? ?)']

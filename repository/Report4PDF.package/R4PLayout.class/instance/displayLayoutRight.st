printing
displayLayoutRight

	^[self layoutRight printString]	
		on: self errorClass
		do: [:ex | '<?>']

printing
displayLayoutBottom

	^[self layoutBottom printString]	
		on: self errorClass
		do: [:ex | '<?>']

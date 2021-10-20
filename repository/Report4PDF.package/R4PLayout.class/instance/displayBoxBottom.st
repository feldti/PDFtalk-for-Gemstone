printing
displayBoxBottom

	^[self boxBottom printString]	
		on: self errorClass
		do: [:ex | '<?>']

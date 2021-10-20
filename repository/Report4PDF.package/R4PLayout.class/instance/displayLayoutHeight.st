printing
displayLayoutHeight
	"can raise an exception if we try to get this value before the layout is calculated"

	^[self layoutHeight printString]
		on: self errorClass
		do: [:ex | '<?>']

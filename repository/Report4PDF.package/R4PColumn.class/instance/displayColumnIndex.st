printing
displayColumnIndex 

	self parent isNil ifTrue: [^'<no table>'].

	^(self parent columns indexOf: self) printString

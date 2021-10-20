printing
displayRowIndex

	self parent isNil ifTrue: [^'<no table>'].
	self isHeaderRow ifTrue: [^'<header row>'].

	^(self parent sections indexOf: self) printString

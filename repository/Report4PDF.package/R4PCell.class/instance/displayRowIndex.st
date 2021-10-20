printing
displayRowIndex

	self parent isNil ifTrue: [^'<no row>'].
	^self parent displayRowIndex

printing
displayColumnIndex

	self column isNil ifTrue: [^'<no column>'].
	^self column displayColumnIndex

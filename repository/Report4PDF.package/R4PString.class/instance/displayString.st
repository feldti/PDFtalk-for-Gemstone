printing
displayString

	self string isNil ifTrue: [^'<nil>'].
	self string size < 20 ifTrue: [^self string].
	^(self string copyFrom: 1 to: 20) , '...'

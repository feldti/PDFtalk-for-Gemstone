printing
displayString

	self sections isEmpty ifTrue: [^'<none>'].
	^self sections first displayString

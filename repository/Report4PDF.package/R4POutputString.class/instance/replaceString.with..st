actions
replaceString: aString with: aNewString

	(self string indexOfSubCollection: aString startingAt: 1) = 0 ifTrue: [^self].

	self string: (self string copyReplaceAll: aString with: aNewString).
	self adjustPosition.

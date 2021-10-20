testing
includeOnPage: aPageNumber

	self include isNil ifTrue: [^true].
	^self include value: aPageNumber

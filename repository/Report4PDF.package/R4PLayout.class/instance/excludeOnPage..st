testing
excludeOnPage: aPageNumber

	self exclude isNil ifTrue: [^false].
	^self exclude value: aPageNumber

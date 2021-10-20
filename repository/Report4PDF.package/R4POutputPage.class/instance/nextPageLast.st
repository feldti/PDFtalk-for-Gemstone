accessing
nextPageLast

	self nextPage isNil ifTrue: [^self].
	^self nextPage nextPageLast

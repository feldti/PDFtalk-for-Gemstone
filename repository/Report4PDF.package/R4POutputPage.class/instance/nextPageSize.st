accessing
nextPageSize

	self nextPage isNil ifTrue: [^0].
	^1 + (self nextPage nextPageSize)

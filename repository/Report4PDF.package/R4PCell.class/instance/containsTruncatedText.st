testing
containsTruncatedText

	self isSingleRow ifTrue: [^false].
	self layoutHeight > self totalRowHeight ifTrue: [^true].

	^false

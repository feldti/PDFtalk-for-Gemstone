layout
contentHeight

	self isFixedLayout ifTrue: [^self fixedHeight].
	^self nestedLayoutHeight

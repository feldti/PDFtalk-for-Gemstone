build - layout
buildBackground: aLayout

	aLayout hasBackground ifFalse: [^self].
	self addOutput: (aLayout outputBackgroundAt: self currentPageNumber)

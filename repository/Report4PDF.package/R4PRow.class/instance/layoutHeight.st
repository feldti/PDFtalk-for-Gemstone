layout
layoutHeight

	self hasFixedHeight ifTrue: [^self fixedHeight].
	^self layoutHeightCalculated

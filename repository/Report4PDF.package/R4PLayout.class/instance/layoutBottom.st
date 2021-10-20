layout
layoutBottom

	self isFixedLayout ifTrue: [^self fixedBottom].

	^self layoutTop
		+ self layoutHeight

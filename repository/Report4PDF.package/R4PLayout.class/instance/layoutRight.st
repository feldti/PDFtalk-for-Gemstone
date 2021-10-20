layout
layoutRight

	self isFixedLayout ifTrue: [^self fixedRight].

	^self parent contentRight

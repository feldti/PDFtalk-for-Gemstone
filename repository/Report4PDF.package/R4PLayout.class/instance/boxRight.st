layout
boxRight

	self isFixedLayout ifTrue: [^self fixedRight].

	^self layoutRight 
		- self marginRight

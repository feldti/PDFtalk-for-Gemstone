layout
boxRight

	self isFixedLayout ifTrue: [^self fixedRight].

	^self boxLeft
		+ self spacingLeft 
		+ self imageWidth
		+ self spacingRight

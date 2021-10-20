layout
boxLeft

	self isFixedLayout ifTrue: [^self fixedLeft].

	^self layoutLeft 
		+ self marginLeft

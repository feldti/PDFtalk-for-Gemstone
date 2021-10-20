layout
boxTop

	self isFixedLayout ifTrue: [^self fixedTop].

	^(self layoutTop ifNil: [0]) + self marginTop

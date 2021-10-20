layout
contentRight

	self isFixedLayout ifTrue: [^self fixedRight - self paddingRight].

	^self parent contentRight 
		- self spacingRight

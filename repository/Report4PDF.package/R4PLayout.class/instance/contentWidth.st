layout
contentWidth

	self isFixedLayout ifTrue: [
		^self fixedWidth 
			- self paddingLeft 
			- self paddingRight].

	^self parent contentWidth 
		- self spacingLeft
		- self spacingRight

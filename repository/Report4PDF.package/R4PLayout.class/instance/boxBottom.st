layout
boxBottom

	self isFixedLayout ifTrue: [^self fixedBottom].

	^(self layoutBottom min: self boxBottomLimit) - self marginBottom
"
	^(self layoutTop 
		+ self spacingTop 
		+ self nestedLayoutHeight 
		+ self paddingBottom) min: (self boxBottomLimit - self spacingBottom)
"

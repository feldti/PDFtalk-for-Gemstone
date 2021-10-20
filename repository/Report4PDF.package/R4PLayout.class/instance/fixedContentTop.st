layout
fixedContentTop

	self isFixedLayout ifTrue: [^self fixedTop].
	^self parent fixedContentTop 
		+ self marginTop
		+ self paddingTop

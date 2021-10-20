layout
contentBottom

	self isFixedLayout ifTrue: [^self fixedBottom - self paddingBottom].

	^self contentTop 
		+ self contentHeight

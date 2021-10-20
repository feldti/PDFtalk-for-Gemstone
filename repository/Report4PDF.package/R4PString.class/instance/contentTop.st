layout
contentTop

	self isTop ifTrue: [^super contentTop].
	self isMiddle ifTrue: [^self parent contentTopForMiddleAlign: self].
	self isBottom ifTrue: [^self parent contentTopForBottomAlign: self].

	self reportError: 'PRwString>>contentLeft ... invalid layoutVerticalAlign: ', self layoutVerticalAlign printString

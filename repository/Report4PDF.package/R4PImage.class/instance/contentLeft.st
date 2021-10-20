layout
contentLeft
	"scale is used as a linear multiplier, so we'll need to adjust for that here"

	self isLeftJustified ifTrue: [^super contentLeft].
	self isCentered ifTrue: [^super contentLeft + ((self contentWidth - self image width) / 2.0)].
	self isRightJustified ifTrue: [^super contentLeft + (self contentWidth - self image width)].

	self reportError: 'PRwImage>>contentLeft ... invalid layoutAlign: ', self layoutAlign printString

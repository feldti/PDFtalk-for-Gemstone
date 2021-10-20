calculate
boxHeightRemainingAt: anIndex
	"No box calculation for repeating headers. They are the same on each page."

	self isHeaderRowCell ifTrue: [^self boxHeight].
	^super boxHeightRemainingAt: anIndex

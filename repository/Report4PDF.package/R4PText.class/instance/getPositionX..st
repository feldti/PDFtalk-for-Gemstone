actions
getPositionX: aStringLayout

	| leftX rightX totalWidth |

	leftX := self stringWidthLeftOf: aStringLayout.
	rightX := self stringWidthRightOf: aStringLayout.
	totalWidth := leftX + (aStringLayout stringWidth) + rightX.

	self isCentered ifTrue: [^self contentLeft + ((self contentWidth - totalWidth) / 2.0) + leftX].
	self isRightJustified ifTrue: [^self contentLeft + (self contentWidth - totalWidth) + leftX].

	self reportError: 'PRwString>>getPositionX: ... invalid layoutAlign: ', self layoutAlign printString

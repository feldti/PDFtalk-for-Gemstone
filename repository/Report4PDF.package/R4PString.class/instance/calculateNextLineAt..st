calculate
calculateNextLineAt: aPosition
	"Answer X position, to be used for next string"

	| stringWidth lineEndIndex outputWidth | 

	self string isEmpty ifTrue: [^aPosition].
	self positionX: aPosition.
	outputWidth := self parent contentWidth - aPosition.
	stringWidth := self stringWidthOf: self string. 
	stringWidth <= outputWidth ifTrue: [
		self endWithLineBreak ifTrue: [self lineBreak: true].
		^self lineBreak
			ifTrue: [0]
			ifFalse: [aPosition + stringWidth]].

	lineEndIndex := ((outputWidth / stringWidth) * self string size) floor - 3. 
	lineEndIndex <= 0 ifTrue: [
		^self calculateNextLineNoRoomAt: aPosition].

	^self calculateNextLineAt: aPosition lineEnd: lineEndIndex

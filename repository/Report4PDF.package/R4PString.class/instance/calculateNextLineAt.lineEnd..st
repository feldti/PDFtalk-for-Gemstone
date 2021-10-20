calculate
calculateNextLineAt: aPosition lineEnd: aLineEndIndex
	"Answer X position, to be used for next string"

	| truncatedString breakIndex endIndex newStringLayout remainingString originalString |
	originalString := self string.
	breakIndex := originalString
		indexOfLastByte: Character space codePoint
		startingAt: aLineEndIndex.
	breakIndex isZero
		ifTrue: [
		endIndex := aLineEndIndex.
		truncatedString := endIndex >= originalString size
			ifTrue: [originalString]
			ifFalse: [
			(originalString copyFrom: 1 to: endIndex) copyWith: $-]]
		ifFalse: [
		endIndex := breakIndex.
		truncatedString := originalString copyFrom: 1 to: endIndex].
	self
		string: truncatedString;
		cr.
	remainingString := originalString
		copyFrom: (endIndex + 1 min: originalString size)
		to: originalString size.
	newStringLayout := self class
		newForParent: self parent
		string: remainingString
		leading: self parent leading
		font: self layoutFont.
	newStringLayout endWithLineBreak: self endWithLineBreak.
	self parent addStringLayout: newStringLayout after: self.
	^newStringLayout calculateNextLineAt: 0

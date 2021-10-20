calculate
buildTruncatedString: anOutputWidth
	" Answer how much width list left for the next string section ... we assume that this string is used in a 'no wrap', 
	so remove all the cr"

	| stringWidth endIndex lineString | 

	lineString := self string copyWithout: [Character cr].
	lineString := lineString copyWithout: [Character lf].

	endIndex := lineString size.
	stringWidth := self stringWidthOf: lineString. 
	(stringWidth < anOutputWidth) ifTrue: [
		self string: lineString.
		^anOutputWidth - stringWidth].

	[stringWidth > anOutputWidth and: [endIndex > 2]] whileTrue: [
		endIndex := endIndex - 1.
		lineString := lineString copyFrom: 1 to: endIndex.
		stringWidth := self stringWidthOf: lineString]. 

	self string: lineString.
	^0

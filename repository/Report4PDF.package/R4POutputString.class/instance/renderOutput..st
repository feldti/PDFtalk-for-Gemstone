actions
renderOutput: aRenderer
	"empty strings can be used for positioning, but once the layout Y values are calculated, 
	we don't need to include the empty strings in the PDF"

	self string trimBlanks isEmpty ifTrue: [^self].

	aRenderer textObjectDo: [
		self color notNil ifTrue: [aRenderer fillColor: self color].
		aRenderer setFont: self font size: 1.
		aRenderer textMatrix: self matrix.
		aRenderer showString: self string.
		self color notNil ifTrue: [aRenderer fillColor: self outputBlack]]

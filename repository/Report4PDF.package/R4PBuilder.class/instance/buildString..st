build - layout
buildString: aLayoutString 
	"fit is checked for a string prior to adding it, so there should not be a page break after it is added.
	Sender increments Y ... different for footer vs. regular text"

	self checkFitString: aLayoutString.
	aLayoutString layoutTop: self currentY.
	self addOutputAll: aLayoutString outputContent.

	aLayoutString lineBreak ifTrue: [
		self incrementY: aLayoutString layoutHeight].

	aLayoutString built: true.

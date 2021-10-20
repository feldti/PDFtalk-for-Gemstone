build - layout
buildLine: aLayoutLine

	aLayoutLine isFixedLayout ifTrue: [
		^self addOutput: aLayoutLine fixedOutputLine].

	self checkFitLine: aLayoutLine. 

	self setLayout: aLayoutLine.
	self addOutput: aLayoutLine outputLine.
	aLayoutLine built: true.

	self incrementY: aLayoutLine nestedLayoutHeight + aLayoutLine spacingBottom.

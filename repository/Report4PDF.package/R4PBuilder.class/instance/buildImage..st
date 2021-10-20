build - layout
buildImage: aLayoutImage
	"border is done after image in case padding is not set; border will overlay the image edge, othewise it would be invisible"

	aLayoutImage isFixedLayout ifTrue: [
		^self buildFixedImage: aLayoutImage].

	self checkFitImage: aLayoutImage.

	self setLayout: aLayoutImage.
	self addOutput: aLayoutImage outputImage.
	self buildBorder: aLayoutImage.
	self incrementY: aLayoutImage layoutHeight.
	self buildSections: aLayoutImage.

	aLayoutImage built: true.

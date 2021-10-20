build - layout
buildFixedImage: aLayoutImage

	self resetCurrentYAfter: [
		self currentY: aLayoutImage fixedTop.
		self incrementY: aLayoutImage spacingTop.
		self addOutput: aLayoutImage outputImage.
		self buildBorder: aLayoutImage.
		self buildSections: aLayoutImage]

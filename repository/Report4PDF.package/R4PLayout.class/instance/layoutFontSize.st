layout
layoutFontSize

	^self fontSize ifNil: [self parent layoutFontSize]

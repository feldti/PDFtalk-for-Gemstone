layout
layoutVerticalAlign

	^self verticalAlign ifNil: [self parent layoutVerticalAlign]

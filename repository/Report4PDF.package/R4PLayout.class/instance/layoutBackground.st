layout
layoutBackground

	^self background ifNil: [self parent layoutBackground]

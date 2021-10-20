layout
layoutCellSpacing

	^(self cellSpacing ifNil: [self parent cellSpacing]) copy

layout
layoutCellBorder

	^(self cellBorder ifNil: [self parent cellBorder]) copy

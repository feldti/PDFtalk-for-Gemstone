layout
layoutCellPadding

	^(self cellPadding ifNil: [self parent cellPadding]) copy

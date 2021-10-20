layout
layoutHeight
	"cell height is set by the row after each cell's height is calculated, 
	prior to that, cell height is calculated, even for fixed width columns"

	self isSingleRow ifFalse: [^self totalRowHeight].
	^self cellHeight ifNil: [self layoutHeightCalculated]

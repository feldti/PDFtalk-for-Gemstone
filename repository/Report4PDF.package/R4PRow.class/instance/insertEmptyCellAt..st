calculate
insertEmptyCellAt: anIndex
	"used when a cell has a rowSpan that affects this row ... spacing is needed, but not the border"

	| cell | 

	cell := R4PCell newForParent: self.
	cell margin: self layoutCellSpacing.
	cell padding: self layoutCellPadding.

	self sections size < anIndex ifTrue: [
		^self sections size + 1 to: anIndex do: [:index | 
			self sections add: cell copy]].

	self sections add: cell beforeIndex: anIndex

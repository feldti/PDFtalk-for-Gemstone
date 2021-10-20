actions - add
cell

	| cell | 

	cell := R4PCell newForParent: self.
	cell margin: self layoutCellSpacing.
	cell padding: self layoutCellPadding.
	cell border: self layoutCellBorder.
	self sections add: cell.
	^cell

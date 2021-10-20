actions - add
header

	| row | 

	row := R4PRow newForParent: self.
	self headerRow: row.
	^row

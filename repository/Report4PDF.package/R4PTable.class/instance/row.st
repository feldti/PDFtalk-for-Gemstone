actions - add
row

	| row | 

	row := R4PRow newForParent: self.
	self sections add: row.
	^row

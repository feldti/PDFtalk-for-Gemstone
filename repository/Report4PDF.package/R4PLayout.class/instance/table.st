actions - add
table

	| table | 

	table := R4PTable newForParent: self.
	self sectionsAdd: table.
	^table

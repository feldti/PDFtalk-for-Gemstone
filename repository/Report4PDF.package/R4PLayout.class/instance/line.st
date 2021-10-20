actions - add
line

	| line | 

	line := R4PLine newForParent: self.
	self sectionsAdd: line.
	^line

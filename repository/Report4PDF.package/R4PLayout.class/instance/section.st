actions - add
section

	| section | 

	section := R4PSection newForParent: self.
	self sectionsAdd: section.
	^section

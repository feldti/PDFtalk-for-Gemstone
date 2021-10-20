actions - add
string

	| stringSection | 
	
	stringSection := R4PString newForParent: self.
	self sectionsAdd: stringSection.
	^stringSection

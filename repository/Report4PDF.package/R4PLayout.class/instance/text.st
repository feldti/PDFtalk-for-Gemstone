actions - add
text

	| text | 

	text := R4PText newForParent: self.
	self sectionsAdd: text.
	^text

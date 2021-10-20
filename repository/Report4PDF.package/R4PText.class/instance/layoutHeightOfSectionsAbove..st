layout
layoutHeightOfSectionsAbove: aLayoutString

	| sectionIndex top | 

	sectionIndex := self layoutSections indexOf: aLayoutString.
	sectionIndex = 1 ifTrue: [^0].
	top := 0 .
	self layoutSections doWithIndex: [:each :index |
		index = sectionIndex ifTrue: [^top].
		top := top + each layoutHeight].

	self error: 'calculation error in layoutHeightOfSectionsAbove: ... string layout section not found in text section '

layout
nestedLayoutHeight

	| total | 

	total := 0.
	self layoutSections do: [:each | 
		total := total + each layoutHeight].
	^total

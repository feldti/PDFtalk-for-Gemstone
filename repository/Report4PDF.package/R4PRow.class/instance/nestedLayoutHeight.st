layout
nestedLayoutHeight

	| maxHeight | 

	maxHeight := self fontHeight.
	self layoutSections do: [:each | 
		each isSingleRow ifTrue: [
			maxHeight := maxHeight max: each layoutHeight]].
	^maxHeight

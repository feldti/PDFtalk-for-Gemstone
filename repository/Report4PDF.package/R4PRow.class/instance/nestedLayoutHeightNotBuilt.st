layout
nestedLayoutHeightNotBuilt

	| maxHeight | 

	maxHeight := self fontHeight.
	self layoutSections do: [:each | 
		each built ifFalse: [
			each isSingleRow ifTrue: [
				maxHeight := maxHeight max: each layoutHeight]]].
	^maxHeight

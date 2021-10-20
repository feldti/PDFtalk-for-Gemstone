layout
cellPaddingTop: aNumber

	| array | 
	
	array := self cellPadding ifNil: [self parent cellPadding copy].
	array at: 1 put: aNumber.
	self cellPadding: array.
	^aNumber

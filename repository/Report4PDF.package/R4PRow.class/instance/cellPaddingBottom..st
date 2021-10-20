layout
cellPaddingBottom: aNumber

	| array | 
	
	array := self cellPadding ifNil: [self parent cellPadding copy].
	array at: 3 put: aNumber.
	self cellPadding: array.
	^aNumber

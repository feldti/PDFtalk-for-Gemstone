layout
cellPaddingRight: aNumber

	| array | 
	
	array := self cellPadding ifNil: [self parent cellPadding copy].
	array at: 2 put: aNumber.
	self cellPadding: array.
	^aNumber

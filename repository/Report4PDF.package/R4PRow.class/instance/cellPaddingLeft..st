layout
cellPaddingLeft: aNumber

	| array | 
	
	array := self cellPadding ifNil: [self parent cellPadding copy].
	array at: 4 put: aNumber.
	self cellPadding: array.
	^aNumber

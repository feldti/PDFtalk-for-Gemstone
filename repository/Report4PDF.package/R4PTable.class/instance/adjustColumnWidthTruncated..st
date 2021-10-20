actions
adjustColumnWidthTruncated: aWidth

	| ratio | 

	self columns do: [:each | 
		each layoutNoWrap ifTrue: [each truncated: true]]. 

	ratio := (self contentWidth / aWidth) asFloat.
	ratio = 0 ifTrue: [^self reportError: 'Table column adjustment ratio is zero... too many columns'].
	self columns do: [:each | 
		each columnWidth: each columnWidth * ratio]

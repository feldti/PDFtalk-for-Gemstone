examples
exampleBackgroundColor
	" self new exampleBackgroundColor saveAndShowAs: 'exampleBackgroundColor.pdf' "

	| report | 

	report := R4PReport new.
	report businessCard.
	report page text background: #gray; string: 'gray background'.
	^report

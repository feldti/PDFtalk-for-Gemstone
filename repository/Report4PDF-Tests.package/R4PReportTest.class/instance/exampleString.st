examples
exampleString
	" self new exampleString saveAndShowAs: 'exampleString.pdf' "

	| report | 

	report := R4PReport new.
	report businessCard.
	report page: [:page | 
		page string: 'Simple string'.
		page text string: 'Text string'.
		(page string: 'String font size 12') fontSize: 12.
		page text string: 'Text font size 14'; fontSize: 14].
	^report

examples
exampleTextBorderHeaderFooter
	" self new exampleTextBorder saveAndShowAs: 'exampleTextBorder.pdf' "

	| report | 

	report := R4PReport new.
	report landscape.
	report page: [:page | 
		page header string: 'This is a header'.
		page text marginTop: 10; padding: 2; border: 0.1; string: 'This is a string on the page'.
		page footer string: 'This is a footer'].
	report page: [:page | 
		page header string: 'This is a 2nd page header'.
		page string: 'This is a string on the second page'.
		page footer string: 'This is a 2nd page footer'].
	^report

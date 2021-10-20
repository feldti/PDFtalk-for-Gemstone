examples
exampleText1Border
	" self new exampleText1Border saveAndShowAs: 'exampleText1Border.pdf' "

	| report | 

	report := R4PReport new.
	report portrait.

	report page: [:page | 
		page header string: 'This is a header'.
		page text 
				marginTop: 20; marginLeft: 40; marginRight: 20; string: self sampleText1; padding: 5; border: 1.
		page footer string: 'This is a footer'].
	^report

examples
exampleBusinessCardText1Border
	" self new exampleBusinessCardText1Border saveAndShowAs: 'exampleBusinessCardText1Border.pdf' "

	| report | 

	report := R4PReport new.
	report businessCard.

	report page: [:page | 
		page header string: 'This is a header'.
		page text marginTop: 5; marginLeft: 10; marginRight: 10; string: self sampleText1; border: 0.1.
		page footer string: 'This is a footer'].
	^report

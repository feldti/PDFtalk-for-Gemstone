examples
exampleTextWithLines
	" self new exampleTextWithLines saveAndShowAs: 'exampleTextWithLines.pdf' "

	| report | 

	report := R4PReport new.
	report landscape.

	report page: [:page | 
		page header fontSize: 20; string: 'This is a header'.
		page horizontalLine.
		page text string: self sampleText1; margin: 10.
		page horizontalLine.
		page text string: self sampleText2; margin: 20.
		page horizontalLine.
		page text string: self sampleText3; margin: 30; padding: 5; border: 1.
		page section: [:section | 
			section marginLeft: 40; marginRight: 40; marginTop: 10.
			section horizontalLine.
			section text: [:text | text string: self sampleText4].
			section horizontalLine].
		page footer fontSize: 20; string: 'This is a footer'].
	^report

examples
exampleText
	" self new exampleText saveAndShowAs: 'exampleText.pdf' "

	| report | 

	report := R4PReport new.
	report portrait.

	report page: [:page | 
		page header text fontSize: 20; string: 'This is a header'.
		page header text fontSize: 10; string: 'This is a second header section with smaller font'.
		page text string: self sampleText1; margin: 10.
		page text fontSize: 12; string: self sampleText2; margin: 20.
		page text fontSize: 14; string: self sampleText3; margin: 30.
		page text fontSize: 16; string: self sampleText4; margin: 40.
		page footer string: 'This is a footer with default formatting.'.
		page footer text fontSize: 20; string: 'This is a footer'.
		page footer text string: 'Another footer with smaller font.'].
	^report

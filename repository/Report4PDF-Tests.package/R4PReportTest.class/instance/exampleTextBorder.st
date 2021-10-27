examples
exampleTextBorder
	" self new exampleTextBorder saveAndShowAs: 'exampleTextBorder.pdf' "

	| report | 

	report := R4PReport new.
	report portrait.

	report page: [:page | 
		page header text fontSize: 20; string: 'This is a header'.
		page header string: 'This is a second header section with default formatting'.
		page text: [:text | text string: self sampleText1; margin: 10; padding: 5; border: 1].
		page text: [:text | text fontSize: 12; string: self sampleText2; margin: 20].
		page text: [:text | text fontSize: 14; string: self sampleText3; margin: 30; padding: 10; border: 2].
		page text: [:text | text fontSize: 16; string: self sampleText4; margin: 40].
		page footer string: 'This is a footer with default formatting. Footers are printed bottom up'.
		page footer text fontSize: 20; string: 'This is a footer'].
	^report

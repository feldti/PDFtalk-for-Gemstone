examples
exampleTextFlip
	" self new exampleTextFlip saveAndShowAs: 'exampleTextFlip.pdf' "

	| report | 

	report := R4PReport new.
	report portrait.

	report page: [:page | 
		page header text fontSize: 20; string: 'This is a header'.
		page header string: 'This is a second header section with default formatting'.
		page text flipText; align: #right; string: self sampleText1; margin: 10.
		page text fontSize: 12; string: self sampleText2; margin: 20.
		page text flipText; align: #right; fontSize: 14; string: self sampleText3; margin: 30.
		page text fontSize: 18; string: self sampleText4; margin: 40.
		page footer text: [:text | text flipText; align: #right; fontSize: 20; string: 'This is a footer'.
		page footer string: 'This is a footer with default formatting. Footers are printed bottom up']].
	^report

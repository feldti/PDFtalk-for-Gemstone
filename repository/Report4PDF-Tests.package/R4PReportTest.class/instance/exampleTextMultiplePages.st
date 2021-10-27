examples
exampleTextMultiplePages
	" self new exampleTextMultiplePages saveAndShowAs: 'exampleTextMultiplePages.pdf' "

	| report | 

	report := R4PReport new.
	report pageWidth: 612.
	report pageHeight: 200.
	report page: [:page | 
		page header fontSize: 20; string: 'Page 1 of <report>'.
		page text: [:text | text string: self sampleText1; margin: 10]].
	report page: [:page | 
		page header text fontSize: 20; string: 'Page 2 of <report>'.
		page text: [:text | text string: self sampleText2; margin: 10]].
	report page: [:page | 
		page header text fontSize: 20; string: 'Page 3 of <report>'.
		page text: [:text | text string: self sampleText3; margin: 10]].
	report page: [:page | 
		page header text fontSize: 20; string: 'Page 4 of <report>'.
		page text: [:text | text string: self sampleText4; margin: 10]].
	^report

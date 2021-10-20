examples
exampleTextFitOnPage
	" self new exampleTextFitOnPage saveAndShowAs: 'exampleTextFitOnPage.pdf' "

	| report | 

	report := R4PReport new.
	report landscape; large.

	report page: [:page | 
		page text: [:text | text string: self sampleText1].
		page text: [:text | text string: self sampleText1].
		page text: [:text | text string: self sampleText1].
		page text: [:text | text string: self sampleText2].
		page text: [:text | text string: self sampleText2].
		page text: [:text | text string: self sampleText2].
		page text: [:text | text makeFitOnPage; string: self sampleText3]. "should display on next page; without fitOnPage it would contain a page break"
		page text: [:text | text string: self sampleText3]].
	^report

examples
exampleText2
	" self new exampleText2 saveAndShowAs: 'exampleText2.pdf' "

	| report | 

	report := R4PReport new.
	report portrait.

	report page: [:page | 
		page text: [:text | text string: self sampleText2]].
	^report

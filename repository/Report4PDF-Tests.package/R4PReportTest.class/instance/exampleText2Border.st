examples
exampleText2Border
	" self new exampleText2Border saveAndShowAs: 'exampleText2Border.pdf' "

	| report | 

	report := R4PReport new.
	report portrait.

	report page: [:page | 
		page text margin: 20; padding: 30; string: self sampleText2; border: 1].
	^report

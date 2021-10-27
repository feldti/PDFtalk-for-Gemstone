examples
exampleBusinessCardText2Border
	" self new exampleBusinessCardText2Border saveAndShowAs: 'exampleBusinessCardText2Border.pdf' "

	| report | 

	report := R4PReport new.
	report businessCard.
	report page text margin: 10; padding: 5; border: 0.2; string: self sampleText2.
	^report

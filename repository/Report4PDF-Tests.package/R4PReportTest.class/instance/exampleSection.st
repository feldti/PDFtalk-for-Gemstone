examples
exampleSection
	" self new exampleSection saveAndShowAs: 'exampleSection.pdf' "

	| report | 

	report := R4PReport new.
	report landscape.
	report page: [:page | 
		page section: [:section | 
			section margin: 30; marginTop: 10; border: 2.5 .
			section string: 'section 1'].
		page section: [:section | 
			section margin: 40; marginTop: 10; border: 2 .
			section string: 'section 2'].
		page section: [:section | 
			section margin: 50; marginTop: 10;  border: 1.5 .
			section string: 'section 3'].
		page section: [:section | 
			section margin: 60; marginTop: 10;  border: 1; padding: 5.
			section string: 'section 4']].
	^report

examples
exampleFixedSection
	" self new exampleFixedSection saveAndShowAs: 'exampleFixedSection.pdf' "

	| report | 

	report := R4PReport new.
	report landscape.
	report page: [:page | 
		page section origin: 10 @ 10; width: 300; height: 400; border: 1.
		page section origin: 20 @ 20; width: 300; height: 400; border: 2.
		page section origin: 30 @ 30; width: 300; height: 400; border: 3.
		page section origin: 40 @ 40; width: 300; height: 400; border: 1.
		page section origin: 50 @ 50; width: 300; height: 400; border: 2.
		page section origin: 60 @ 60; width: 300; height: 400; border: 3;
			text: [:text | text margin: 10; string: 'nested text margin=10'].
		page  section origin: 500 @ 50; width: 150; height: 150; border: 1;
			string: 'more nested text margin=0'].
	^report

examples
exampleLinesSections
	" self new exampleLinesSections saveAndShowAs: 'exampleLinesSections.pdf' "

	| report | 

	report := R4PReport new.
	report businessCard.
	report page: [:page | 
		page section origin: 10 @ 10; width: 230; height: 130; border: 0.1.
		page section origin: 20 @ 20; width: 210; height: 110; border: 1.
		page section origin: 30 @ 30; width: 190; height: 90; border: 2.
		page section origin: 40 @ 40; width: 170; height: 70; border: 4].
	^report

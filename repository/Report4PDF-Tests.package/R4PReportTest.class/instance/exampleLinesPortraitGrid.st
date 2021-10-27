examples
exampleLinesPortraitGrid
	" self new exampleLinesPortraitGrid saveAndShowAs: 'exampleLinesPortraitGrid.pdf' "

	| report | 

	report := R4PReport new.
	report portrait.
	report page grid.
	^report

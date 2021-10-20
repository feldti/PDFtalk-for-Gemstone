examples
exampleLayoutPageString
	" self new exampleLayoutPageString saveAndShowAs: 'exampleLayoutPageString.pdf' "

	| report | 

	report := R4PReport new.
	report pageWidth: 300.
	report pageHeight: 200.
	report page string: 'default text'.
	^report

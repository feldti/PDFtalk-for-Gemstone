examples
exampleLinesFancy
	" self new exampleLinesFancy saveAndShowAs: 'exampleLinesFancy.pdf' "

	| report | 

	report := R4PReport new.
	report pageWidth: 500.
	report pageHeight: 500.
	report page: [:page | 
		0 to: 500 by: 10 do: [:index | 
			page line: [:line | line fixedTop: 0; fixedRight: 500; fixedBottom: index; fixedLeft: index; lineWidth: 0.1]].
		0 to: 500 by: 10 do: [:index | 
			page line: [:line | line fixedTop: index; fixedRight: index; fixedBottom: 500; fixedLeft: 0; lineWidth: 0.1]]].
	^report

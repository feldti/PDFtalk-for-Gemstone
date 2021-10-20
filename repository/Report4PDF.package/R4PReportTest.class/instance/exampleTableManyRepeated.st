examples
exampleTableManyRepeated
	" self new exampleTableManyRepeated saveAndShowAs: 'exampleTableManyRepeated.pdf' "

	| report | 

	report := R4PReport new.
	report pageWidth: 612.
	report pageHeight: 200.
	report margin: 20.
	
	report page: [:page | 
		1 to: 60 do: [:index | 
			page table 
				cellBorder: 0.1; cellSpacing: 2; cellPadding: 2; 
				row: [:row |
					row cell widthPercent: 40; string: 'row number: ', index printString.
					row cell widthPercent: 60; string: 'second column']]].
	^report

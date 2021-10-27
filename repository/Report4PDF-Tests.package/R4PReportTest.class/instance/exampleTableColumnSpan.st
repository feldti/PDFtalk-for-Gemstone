examples
exampleTableColumnSpan
	" self new exampleTableColumnSpan saveAndShowAs: 'exampleTableColumnSpan.pdf' "

	| report | 

	report := R4PReport new.
	report landscape.
	report page: [:page | 
		page table: [:table | 
			table marginTop: 10; cellPadding: 2; cellBorder: 0.1 .
			table header: [:row | 
				row fontSize: 12.
				row cell string: 'Table Header 1'.
				row cell string: 'Table Header 2'.
				row cell string: 'Table Header 3'].
			table row: [:row | 
				row cell string: 'data row 1 column 1'.
				row cell string: 'data row 1 column 2'.
				row cell string: 'data row 1 column 3'].
			table row: [:row | 
				row cell gray; columnSpan: 2; string: 'data row 2 column 1 >> span 2 cells' .
				row cell string: 'data row 2 column 3'].
			table row: [:row | 
				row cell string: 'data row 3 column 1'.
				row cell gray; columnSpan: 2; string: 'data row 3 column 2 >> span 2 cells'].
			table row: [:row | 
				row cell gray columnSpan: 3; string: 'data row 3 column 1 >> span 3 cells']]].
	^report

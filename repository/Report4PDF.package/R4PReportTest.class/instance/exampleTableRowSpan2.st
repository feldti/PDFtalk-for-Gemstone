examples
exampleTableRowSpan2
	" self new exampleTableRowSpan2 saveAndShowAs: 'exampleTableRowSpan2.pdf' "

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
				row cell gray; rowSpan: 3; string: 'data row 2 column 1, row span 3' .
				row cell string: 'data row 2 column 2'.
				row cell string: 'data row 2 column 3'].
			table row: [:row | 
				row cell string: 'data row 3 column 2'.
				row cell string: 'data row 3 column 3'].
			table row: [:row | 
				row cell string: 'data row 4 column 2'.
				row cell string: 'data row 4 column 3']]].
	^report

examples
exampleTableNoWrap
	" self new exampleTableNoWrap saveAndShowAs: 'exampleTableNoWrap.pdf' "

	| report | 

	report := R4PReport new.
	report businessCard.
	report page: [:page | 
		page table: [:table | 
			table margin: 2.
			table cellBorder: 0.1 .
			table header: [:row | 
				row cell noWrap; string: 'Table Header 1 no wrap'.
				row cell text string: 'Table Header 2'.
				row cell string: 'Table Header 3'].
			table row: [:row | 
				row cell text string: 'data row 1 column 1'.
				row cell string: 'data row 1 column 2 and some long text'.
				row cell string: 'data row 1 column 3'].
			table row: [:row | 
				row cell string: 'data row 2 column 1'.
				row cell string: 'data row 2 column 2'.
				row cell string: 'data row 2 column 3'].
			table row: [:row | 
				row cell string: 'data row 3 column 1'.
				row cell string: 'data row 3 column 2'.
				row cell string: 'data row 3 column 3']]].
	^report

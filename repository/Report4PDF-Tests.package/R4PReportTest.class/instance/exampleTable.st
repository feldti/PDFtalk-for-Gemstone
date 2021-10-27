examples
exampleTable
	" self new exampleTable saveAndShowAs: 'exampleTable.pdf' "

	| report | 

	report := R4PReport new.
	report portrait.
	report page: [:page | 
		page header string: 'This is a table report header'.
		page table: [:table | 
			table marginTop: 10; cellPadding: 2.
			table header: [:row | 
				row fontSize: 12.
				row cell string: 'Table Header 1 pjyg'; border: 0.1 .
				row cell text string: 'Table Header 2'.
				row cell string: 'Table Header 3'].
			table row: [:row | 
				row cell text string: 'data row 1 column 1'.
				row cell string: 'data row 1 column 2 pjyg'; border: 0.1 .
				row cell string: 'data row 1 column 3'].
			table row: [:row | 
				row cell string: 'data row 2 column 1'.
				row cell string: 'data row 2 column 2'.
				row cell string: 'data row 2 column 3 pjyg'; border: 0.1 ].
			table row: [:row | 
				row cell string: 'data row 3 column 1'.
				row cell string: 'data row 3 column 2'.
				row cell string: 'data row 3 column 3'; border: 0.1 ]].
		page footer string: 'This is a table report footer'].
	^report

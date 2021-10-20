examples
exampleTableFixedCellWidth
	" self new exampleTableFixedCellWidth saveAndShowAs: 'exampleTableFixedCellWidth.pdf' "

	| report | 

	report := R4PReport new.
	report landscape.
	report page: [:page | 
		page header text large bold string: 'fixed column widths'.
		page table: [:table | 
			table cellPadding: 2; cellBorder: 0.1 .
			table header: [:row | 
				row large.
				row cell string: 'Table Header 200'; width: 200.
				row cell string: 'Table Header 250'; width: 250.
				row cell string: 'Table Header 275'; width: 275.].
			table row: [:row | 
				row cell string: 'data row 1 column 1'; width: 200.
				row cell string: 'data row 1 column 2'; width: 250.
				row cell string: 'data row 1 column 3'; width: 275].
			table row: [:row | 
				row cell string: 'data row 2 column 1'; width: 200.
				row cell string: 'data row 2 column 2'; width: 250.
				row cell string: 'data row 2 column 3'; width: 275].
			table row: [:row | 
				row cell string: 'data row 3 column 1'; width: 200.
				row cell string: 'data row 3 column 2'; width: 250.
				row cell string: 'data row 3 column 3'; width: 275].]].
	^report

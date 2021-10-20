examples
exampleTableColumnSpanLongText
	" self new exampleTableColumnSpanLongText saveAndShowAs: 'exampleTableColumnSpanLongText.pdf' "

	| report | 

	report := R4PReport new.
	report landscape.
	report page: [:page | 
		page table: [:table | 
			table marginTop: 10; cellPadding: 4; cellBorder: 0.1 .
			table header: [:row | 
				row large.
				row cell string: 'Table Header 1'.
				row cell string: 'Table Header 2'.
				row cell string: 'Table Header 3'].
			table row: [:row | 
				row cell string: 'data row 1 column 1'.
				row cell string: 'data row 1 column 2'.
				row cell string: 'data row 1 column 3'].
			table row: [:row | 
				row cell columnSpan: 3; string: self sampleText2 ].
			table row: [:row | 
				row cell string: 'data row 3 column 1'.
				row cell string: 'data row 3 column 2'.
				row cell string: 'data row 3 column 3'].
			table row: [:row | 
				row cell columnSpan: 3; string: self sampleText1 ]]].
	^report

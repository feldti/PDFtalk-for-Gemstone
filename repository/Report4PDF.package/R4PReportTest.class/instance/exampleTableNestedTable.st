examples
exampleTableNestedTable
	" self new exampleTableNestedTable saveAndShowAs: 'exampleTableNestedTable.pdf' "

	| report | 

	report := R4PReport new.
	report portrait.
	report page: [:page | 
		page header string: 'Show a nested table'.
		page table: [:table | 
			table cellPadding: 2.
			table row: [:row | 
				row cell text string: 'data row 1 column 1'.
				row cell string: 'data row 1 column 2' .
				row cell string: 'data row 1 column 3'].
			table row: [:row | 
				row cell string: 'data row 2 column 1'.
				row cell string: 'data row 2 column 2'.
				row cell: [:cell | 
					cell widthPercent: 40; border: 0.5.
					cell table: [:nestedTable | 
						nestedTable  cellPadding: 2; cellBorder: 0.1 .
						nestedTable row: [:nestedRow | 
							nestedRow cell string: 'nested row 1 column 1'.
							nestedRow cell string: 'nested row 1 column 2'].
						nestedTable row: [:nestedRow | 
							nestedRow cell string: 'nested row 2 column 1'.
							nestedRow cell string: 'nested row 2 column 2']. ] ]].
			table row: [:row | 
				row cell text string: 'data row 3 column 1'.
				row cell string: 'data row 3 column 2' .
				row cell string: 'data row 3 column 3']]].
	^report

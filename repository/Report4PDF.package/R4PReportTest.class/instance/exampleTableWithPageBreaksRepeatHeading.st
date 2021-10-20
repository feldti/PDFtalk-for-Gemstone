examples
exampleTableWithPageBreaksRepeatHeading
	" self new exampleTableWithPageBreaksRepeatHeading saveAndShowAs: 'exampleTableWithPageBreaksRepeatHeading.pdf' "

	| report | 

	report := R4PReport new.
	report pageWidth: 612.
	report pageHeight: 200.
	report page: [:page | 
		page header string: 'This is a table report header. Table header repeats on each page.'.
		page table: [:table | 
			table cellSpacing: #(0 10 0 10); repeatHeading; cellBorder: 0.1 .
			table header: [:row | 
				row cell text bold string: 'heading 1'.
				row cell text bold string: 'heading 2'.
				row cell text bold string: 'heading 3'].
			1 to: 50 do: [:index | 
				table row: [:row | 
					row cell string: 'column 1, row ', index printString.
					row cell string: 'column 2, row ', index printString.
					row cell string: 'column 3, row ', index printString]]].
		page footer string: 'This is a table report footer'].
	^report

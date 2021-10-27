examples
exampleTableWithPageBreaks
	" self new exampleTableWithPageBreaks saveAndShowAs: 'exampleTableWithPageBreaks.pdf' "

	| report | 

	report := R4PReport new.
	report pageWidth: 612.
	report pageHeight: 200.
	report page: [:page | 
		page header string: 'This is a table report header'.
		page table: [:table | 
			table border: 1. "border should be repeated on each page"
			table cellSpacing: #(0 10 0 10); cellPadding: #(0 5 0 5); cellBorder: 0.1 .
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

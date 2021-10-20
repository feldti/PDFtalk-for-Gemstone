examples
exampleTextColumnsPageBreaksAndColumnHeader
	" self new exampleTextColumnsPageBreaksAndColumnHeader saveAndShowAs: 'exampleTextColumnsPageBreaksAndColumnHeader.pdf' "

	| report | 

	report := R4PReport new.
	report pageWidth: 600.
	report pageHeight: 300.
	report margin: 5.

	report page: [:page | 
		page header: [:section | section text fontSize: 20; string: 'This is a header for page <page>'].
		page table: [:table | 
			table repeatHeading. 
			table header: [:row | 
				row cell text center bold string: 'heading 1'.
				row cell text center bold string: 'heading 2'.
				row cell text center bold string: 'heading 3'.
				row cell text center bold string: 'heading 4'.].
			table row: [:row | 
				row  cell: [:cell | cell widthPercent: 25; border: 1; text: [:text | text string: self sampleText1; margin: 10]].
				row  cell: [:cell | cell widthPercent: 25; text: [:text | text string: self sampleText2; margin: 10]].
				row  cell: [:cell | cell widthPercent: 25; border: 1; text: [:text | text string: self sampleText3; margin: 10]].
				row  cell: [:cell | cell widthPercent: 25; text: [:text | text string: self sampleText4; margin: 10]] ]].
		page footer: [:section | section text fontSize: 20; string: 'This is a footer for page <page> of <total>'.]].
	^report

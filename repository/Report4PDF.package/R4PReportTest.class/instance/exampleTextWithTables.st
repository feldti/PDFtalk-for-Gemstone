examples
exampleTextWithTables
	" self new exampleTextWithTables saveAndShowAs: 'exampleTextWithTables.pdf' "

	| report | 

	report := R4PReport new.
	report portrait.
	report page: [:page | 
		page header text bold; string: 'This is a header'.
		page header string: 'This is a second header'.
		page text marginTop: 10; marginBottom: 10; string: self sampleText1.
		page table: [:table | 
			table cellPadding: 5; cellBorder: 0.1 .
			table row: [:row | 
				row  cell widthPercent: 50; string: self sampleText1.
				row  cell widthPercent: 50; string: self sampleText2]].
		page text marginTop: 10; marginBottom: 10; string: self sampleText2.
		page table: [:table | 
			table cellPadding: 5; cellBorder: 0.1 .
			table row: [:row | 
				row  cell widthPercent: 50; string: self sampleText3.
				row  cell widthPercent: 50; string: self sampleText4]].
		page text marginTop: 10; marginBottom: 10; string: self sampleText3.
		page table: [:table | 
			table cellPadding: 5; cellBorder: 0.1 .
			table row: [:row | 
				row  cell widthPercent: 25; string: self sampleText1.
				row  cell widthPercent: 25; string: self sampleText2.
				row  cell widthPercent: 25; string: self sampleText3.
				row  cell widthPercent: 25; string: self sampleText4]].
		page text marginTop: 10; marginBottom: 10; string: self sampleText4.
		page footer text bold string: 'This is a footer.'.
		page footer text bold string: 'Another footer on page <page>'].
	^report

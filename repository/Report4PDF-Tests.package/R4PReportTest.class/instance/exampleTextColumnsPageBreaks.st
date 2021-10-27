examples
exampleTextColumnsPageBreaks
	" self new exampleTextColumnsPageBreaks saveAndShowAs: 'exampleTextColumnsPageBreaks.pdf' "

	| report | 

	report := R4PReport new.
	report pageWidth: 600.
	report pageHeight: 300.
	report margin: 5.

	report page: [:page | 
		page header: [:section | section fontSize: 20; string: 'This is a header for page <page>'].
		page table: [:table | 
			table row: [:row | 
				row  cell: [:cell | cell widthPercent: 25; border: 1; text: [:text | text string: self sampleText1; margin: 15]].
				row  cell: [:cell | cell widthPercent: 25; text: [:text | text string: self sampleText2; margin: 15]].
				row  cell: [:cell | cell widthPercent: 25; border: 1; text: [:text | text string: self sampleText3; margin: 15]].
				row  cell: [:cell | cell widthPercent: 25; text: [:text | text string: self sampleText4; margin: 15]] ]].
		page footer: [:section | section fontSize: 20; string: 'This is a footer for page <page> of <total>'.]].
	^report

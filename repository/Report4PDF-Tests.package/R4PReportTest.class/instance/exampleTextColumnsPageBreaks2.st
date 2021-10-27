examples
exampleTextColumnsPageBreaks2
	"self new exampleTextColumnsPageBreaks2 saveAndShowAs: 'exampleTextColumnsPageBreaks2.pdf' "
	"case where second column triggers page break ... bug fix: second row of nested table should be on same page"

	| report | 

	report := R4PReport new.
	report pageWidth: 600.
	report pageHeight: 300.
	report margin: 5.

	report page: [:page | 
		page table: [:table | 
			table row: [:row | 
				row  cell: [:cell | cell widthPercent: 25; text: [:text | text string: self sampleText2]].
				row  cell: [:cell | 
					cell widthPercent: 75; border: 1. 
					cell table: [:table2 | 
						table2 cellBorder: 1.
						table2 row: [:row2 | row2 cell string: 'first line of text'; string: ' second line of text'].
						table2 row: [:row2 | row2 cell string: 'second row of text'; string: ' second line of second row']]]]]].
	^report

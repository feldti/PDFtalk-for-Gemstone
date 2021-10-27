examples
exampleTextColumns
	" self new exampleTextColumns saveAndShowAs: 'exampleTextColumns.pdf' "

	| report | 

	report := R4PReport new.
	report landscape.

	report page: [:page | 
		page header text fontSize: 20; string: 'This is a header'.
		page table: [:table | 
			table row: [:row | 
				row  cell widthPercent: 25; border: 1; text: [:text | text string: self sampleText1; margin: 10].
				row  cell widthPercent: 25; text: [:text | text string: self sampleText2; margin: 10].
				row  cell widthPercent: 25; border: 1; text: [:text | text string: self sampleText3; margin: 10].
				row  cell widthPercent: 25; text: [:text | text string: self sampleText4; margin: 10] ]].
		page footer text fontSize: 20; string: 'This is a footer'.].
	^report

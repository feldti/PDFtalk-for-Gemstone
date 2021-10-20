examples
exampleHeaderFooterTable
	" self new exampleHeaderFooterTable saveAndShowAs: 'exampleHeaderFooterTable.pdf' "

	| report | 

	report := R4PReport new.
	report landscape.

	report page: [:page | 
		page header table: [:table | 
			table row: [:row | 
				row cell widthPercent: 50; text: [:text | text fontSize: 12; string: 'This is the header; left'].
				row cell right widthPercent: 50; text: [:text | text fontSize: 12; string: 'This is the header; right']]].
		page footer table: [:table | 
			table row: [:row | 
				row cell widthPercent: 50; text: [:text | text fontSize: 12; string: 'This is the footer; left'].
				row cell right widthPercent: 50; text: [:text | text fontSize: 12; string: 'This is the footer; right']]]].
	^report

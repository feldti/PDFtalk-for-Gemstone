examples
exampleTableNestedSections
	" self new exampleTableNestedSections saveAndShowAs: 'exampleTableNestedSections.pdf' "

	| report | 

	report := R4PReport new.
	report landscape.
	report page: [:page | 
		page margin: 10.
		page header string: 'This is a table report header'.
		page table: [:table | 
			table marginTop: 10; cellBorder: 0.1 ; cellPadding: 4. 
			table header: [:row | 
				row gray.
				row cellBorder: 1.5 . 
				row large.
				row cell string: 'Table Header 1 pjyg'.
				row cell string: 'Table Header 2'.
				row cell string: 'Table Header 3'].
			table row: [:row | 
				row background: #lightgray; border: 1.
				row cell string: 'data row 1 column 1'.
				row cell string: 'data row 1 column 2 pjyg'; border: 0.5.
				row cell text margin: 10; border: 0.1; foreground: #red; string: 'This is nested section content with margin 10 in red'].
			table row: [:row | 
				row cell string: 'data row 2 column 1'; border: 1.
				row cell text margin: 20; border: 0.1; string: 'This is nested section content with margin 20'.
				row cell string: 'data row 2 column 3 pjyg'; border: 1].
			table row: [:row | 
				row cell text margin: 30; padding: 2; background: #gray; border: 0.1; string: 'This is nested section content with margin 30, padding 2, row 3 column 1'.
				row cell string: 'data row 3 column 2'.
				row cell string: 'data row 3 column 3']].
		page footer string: 'This is a table report footer'].
	^report

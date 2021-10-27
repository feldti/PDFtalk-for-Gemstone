examples
exampleTableCellVerticalAlignmentOfText
    "self new exampleTableCellVerticalAlignmentOfText saveAndShowAs: 'exampleTableCellVerticalAlignmentOfText.pdf'"

	| report |

	report := R4PReport new.
	report portrait.
	report page: [:page | 
		page header string: 'Each table cell should show proper horizontal and vertical alignment, even when the text wraps'.
		page table: [:table | table cellBorder: 0.1 .
				table row: [:row | 
					row cell: [:cell | cell text veryLarge left; top; string: 'top, left'].
					row cell: [:cell | cell text center; top; string: 'top, center'].
					row cell: [:cell | cell text right; top; string: 'top, right']].
				table row: [:row | 
					row cell: [:cell | cell text left; middle; string: 'middle, left'].
					row cell: [:cell | cell text veryLarge; center; middle; string: 'middle, center'].
					row cell: [:cell | cell text right; middle; string: 'middle, right']].
				table row: [:row | 
					row cell: [:cell | cell text left; bottom; string: 'bottom, left'].
					row cell: [:cell | cell text center; bottom; string: 'bottom, center'].
					row cell: [:cell | cell text veryLarge; right; bottom; string: 'bottom, right']].
				table row: [:row | 
					row cell: [:cell | cell text small top string: 'The quick brown fox jumps over the lazy dog.'].
					row cell: [:cell | cell text medium top center string: 'The quick brown fox jumps over the lazy dog.'].
					row cell: [:cell | cell text veryLarge top right string: 'The quick brown fox jumps over the lazy dog.']].
				table row: [:row | 
					row cell: [:cell | cell text small left middle string: 'The quick brown fox jumps over the lazy dog.'].
					row cell: [:cell | cell text medium center middle string: 'The quick brown fox jumps over the lazy dog.'].
					row cell: [:cell | cell text veryLarge right middle string: 'The quick brown fox jumps over the lazy dog.']].
				table row: [:row |  
					row cell: [:cell | cell text small left bottom string: 'The quick brown fox jumps over the lazy dog.'].
					row cell: [:cell | cell text medium center bottom string: 'The quick brown fox jumps over the lazy dog.'].
					row cell: [:cell | cell text veryLarge right bottom string: 'The quick brown fox jumps over the lazy dog.']]]].
    ^report

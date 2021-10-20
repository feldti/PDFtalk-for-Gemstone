examples
exampleTableCellVerticalAlignmentOfText2
	"self new exampleTableCellVerticalAlignmentOfText2 saveAndShowAs: 'exampleTableCellVerticalAlignmentOfText2.pdf'"

	| report |

	report := R4PReport new.
	report portrait.
	report traceToTranscript. 
	report page: [:page | 
		page table: [:table | table cellBorder: 0.1 .
				table row: [:row | 
					row cell: [:cell | cell text medium left middle string: 'The quick brown fox jumps over the lazy dog.'].
					row cell: [:cell | cell text medium center middle string: 'The quick brown fox jumps over the lazy dog.'].
					row cell: [:cell | cell text medium right middle string: 'The quick brown fox jumps over the lazy dog.']]]].
    ^report

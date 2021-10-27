examples
exampleTableWithMixedPageBreaks
	" self new exampleTableWithMixedPageBreaks saveAndShowAs: 'exampleTableWithMixedPageBreaks.pdf' "
	" from Ivo Roefs "

	| report |

	report := R4PReport new.
	report A4Portrait.
	report margin: 0.
	report page: [:page |
		page margin: 10.
		page  header
			marginTop: 10;
			table: [:table |
				table row: [:row |
					row cell: [:cell | cell
										widthPercent: 50;
										text: [:text | text
														fontSize: 12; bold;
														string: 'Reconstruct unwanted page breaks']].
							row cell: [:cell | cell 
												right; widthPercent: 50;
												text: [:text | text fontSize: 12; string: 'PDF4Smalltalk & Report4PDF Rocks!!!!']]]].
		1 to: 50 do: [:index1 |
			page text: [:text | text string: 'customer nr: ' , index1 displayString].
			page table: [:table |
				table cellPadding: 2.
				1 to: index1 \\ 20 do: [:docNr |
					table row: [:row |
						row fontSize: 6.
						row cell string: 'cell1OfDocNr' , docNr displayString.
						row cell string: 'cell2OfDocNr' , docNr displayString.
						row cell string: 'cell3OfDocNr' , docNr displayString.
						row cell string: 'cell4OfDocNr' , docNr displayString]]]].
		page footer text: [:text | text right; fontSize: 8; string: 'page <page>/<total>']].
	^report

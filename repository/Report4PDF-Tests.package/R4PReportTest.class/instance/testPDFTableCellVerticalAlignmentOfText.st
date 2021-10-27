tests - PDF
testPDFTableCellVerticalAlignmentOfText
	 "Generated on 13. Juni 2021 um 18:14:33
	 (  self new createTestContentsHexString: #exampleTableCellVerticalAlignmentOfText )

	 (  self new exampleTableCellVerticalAlignmentOfText saveAndShowAs: 'exampleTableCellVerticalAlignmentOfText.pdf' )  "  

	| report |

	report := self exampleTableCellVerticalAlignmentOfText.
	self assert: (report byteArraySUnitAs: 'testTableCellVerticalAlignmentOfText.pdf') asHexString = self pdfTableCellVerticalAlignmentOfText

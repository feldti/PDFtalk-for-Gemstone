tests - PDF
testPDFTableCellVerticalAlignmentOfText2
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsHexString: #exampleTableCellVerticalAlignmentOfText2 )

	 (  self new exampleTableCellVerticalAlignmentOfText2 saveAndShowAs: 'exampleTableCellVerticalAlignmentOfText2.pdf' )  "  

	| report |

	report := self exampleTableCellVerticalAlignmentOfText2.
	self assert: (report byteArraySUnitAs: 'testTableCellVerticalAlignmentOfText2.pdf') asHexString = self pdfTableCellVerticalAlignmentOfText2

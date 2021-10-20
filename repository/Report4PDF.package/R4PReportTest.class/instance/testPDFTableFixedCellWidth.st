tests - PDF
testPDFTableFixedCellWidth
	 "Generated on 13. Juni 2021 um 18:14:33
	 (  self new createTestContentsHexString: #exampleTableFixedCellWidth )

	 (  self new exampleTableFixedCellWidth saveAndShowAs: 'exampleTableFixedCellWidth.pdf' )  "  

	| report |

	report := self exampleTableFixedCellWidth.
	self assert: (report byteArraySUnitAs: 'testTableFixedCellWidth.pdf') asHexString = self pdfTableFixedCellWidth

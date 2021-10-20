tests - PDF
testPDFTableCellSpacingAndPadding
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsHexString: #exampleTableCellSpacingAndPadding )

	 (  self new exampleTableCellSpacingAndPadding saveAndShowAs: 'exampleTableCellSpacingAndPadding.pdf' )  "  

	| report |

	report := self exampleTableCellSpacingAndPadding.
	self assert: (report byteArraySUnitAs: 'testTableCellSpacingAndPadding.pdf') asHexString = self pdfTableCellSpacingAndPadding

tests - PDF
testPDFTableRowColumnSpan
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsHexString: #exampleTableRowColumnSpan )

	 (  self new exampleTableRowColumnSpan saveAndShowAs: 'exampleTableRowColumnSpan.pdf' )  "  

	| report |

	report := self exampleTableRowColumnSpan.
	self assert: (report byteArraySUnitAs: 'testTableRowColumnSpan.pdf') asHexString = self pdfTableRowColumnSpan

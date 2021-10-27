tests - PDF
testPDFTableColumnSpan
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsHexString: #exampleTableColumnSpan )

	 (  self new exampleTableColumnSpan saveAndShowAs: 'exampleTableColumnSpan.pdf' )  "  

	| report |

	report := self exampleTableColumnSpan.
	self assert: (report byteArraySUnitAs: 'testTableColumnSpan.pdf') asHexString = self pdfTableColumnSpan

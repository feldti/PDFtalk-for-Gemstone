tests - PDF
testPDFTextWithTables
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsHexString: #exampleTextWithTables )

	 (  self new exampleTextWithTables saveAndShowAs: 'exampleTextWithTables.pdf' )  "  

	| report |

	report := self exampleTextWithTables.
	self assert: (report byteArraySUnitAs: 'testTextWithTables.pdf') asHexString = self pdfTextWithTables

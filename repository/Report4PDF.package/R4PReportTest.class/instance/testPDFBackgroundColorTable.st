tests - PDF
testPDFBackgroundColorTable
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsHexString: #exampleBackgroundColorTable )

	 (  self new exampleBackgroundColorTable saveAndShowAs: 'exampleBackgroundColorTable.pdf' )  "  

	| report |

	report := self exampleBackgroundColorTable.
	self assert: (report byteArraySUnitAs: 'testBackgroundColorTable.pdf') asHexString = self pdfBackgroundColorTable

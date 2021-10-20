tests - PDF
testPDFBackgroundColorHexTable
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsHexString: #exampleBackgroundColorHexTable )

	 (  self new exampleBackgroundColorHexTable saveAndShowAs: 'exampleBackgroundColorHexTable.pdf' )  "  

	| report |

	report := self exampleBackgroundColorHexTable.
	self assert: (report byteArraySUnitAs: 'testBackgroundColorHexTable.pdf') asHexString = self pdfBackgroundColorHexTable

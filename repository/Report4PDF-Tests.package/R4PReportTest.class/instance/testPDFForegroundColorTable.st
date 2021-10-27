tests - PDF
testPDFForegroundColorTable
	 "Generated on 13. Juni 2021 um 18:14:31
	 (  self new createTestContentsHexString: #exampleForegroundColorTable )

	 (  self new exampleForegroundColorTable saveAndShowAs: 'exampleForegroundColorTable.pdf' )  "  

	| report |

	report := self exampleForegroundColorTable.
	self assert: (report byteArraySUnitAs: 'testForegroundColorTable.pdf') asHexString = self pdfForegroundColorTable

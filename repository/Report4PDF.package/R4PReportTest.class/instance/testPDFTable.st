tests - PDF
testPDFTable
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsHexString: #exampleTable )

	 (  self new exampleTable saveAndShowAs: 'exampleTable.pdf' )  "  

	| report |

	report := self exampleTable.
	self assert: (report byteArraySUnitAs: 'testTable.pdf') asHexString = self pdfTable

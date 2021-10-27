tests - PDF
testPDFHeaderFooterTable
	 "Generated on 13. Juni 2021 um 18:14:30
	 (  self new createTestContentsHexString: #exampleHeaderFooterTable )

	 (  self new exampleHeaderFooterTable saveAndShowAs: 'exampleHeaderFooterTable.pdf' )  "  

	| report |

	report := self exampleHeaderFooterTable.
	self assert: (report byteArraySUnitAs: 'testHeaderFooterTable.pdf') asHexString = self pdfHeaderFooterTable

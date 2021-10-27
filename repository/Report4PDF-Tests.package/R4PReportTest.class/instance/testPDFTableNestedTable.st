tests - PDF
testPDFTableNestedTable
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsHexString: #exampleTableNestedTable )

	 (  self new exampleTableNestedTable saveAndShowAs: 'exampleTableNestedTable.pdf' )  "  

	| report |

	report := self exampleTableNestedTable.
	self assert: (report byteArraySUnitAs: 'testTableNestedTable.pdf') asHexString = self pdfTableNestedTable

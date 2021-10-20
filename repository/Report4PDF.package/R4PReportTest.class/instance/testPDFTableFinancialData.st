tests - PDF
testPDFTableFinancialData
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsHexString: #exampleTableFinancialData )

	 (  self new exampleTableFinancialData saveAndShowAs: 'exampleTableFinancialData.pdf' )  "  

	| report |

	report := self exampleTableFinancialData.
	self assert: (report byteArraySUnitAs: 'testTableFinancialData.pdf') asHexString = self pdfTableFinancialData

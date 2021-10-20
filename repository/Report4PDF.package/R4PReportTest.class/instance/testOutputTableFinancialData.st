tests - output
testOutputTableFinancialData
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsPrintOutput: #exampleTableFinancialData )

	 (  self new exampleTableFinancialData saveAndShowAs: 'exampleTableFinancialData.pdf' )  "  

	| report |

	report := self exampleTableFinancialData.

	report buildPDF.
	self assert: report printOutput = self outputTableFinancialData.

tests - output
testOutputHeaderFooterTable
	 "Generated on 13. Juni 2021 um 18:14:30
	 (  self new createTestContentsPrintOutput: #exampleHeaderFooterTable )

	 (  self new exampleHeaderFooterTable saveAndShowAs: 'exampleHeaderFooterTable.pdf' )  "  

	| report |

	report := self exampleHeaderFooterTable.

	report buildPDF.
	self assert: report printOutput = self outputHeaderFooterTable.

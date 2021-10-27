tests - output
testOutputForegroundColorTable
	 "Generated on 13. Juni 2021 um 18:14:31
	 (  self new createTestContentsPrintOutput: #exampleForegroundColorTable )

	 (  self new exampleForegroundColorTable saveAndShowAs: 'exampleForegroundColorTable.pdf' )  "  

	| report |

	report := self exampleForegroundColorTable.

	report buildPDF.
	self assert: report printOutput = self outputForegroundColorTable.

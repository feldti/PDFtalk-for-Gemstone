tests - output
testOutputBackgroundColorTable
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsPrintOutput: #exampleBackgroundColorTable )

	 (  self new exampleBackgroundColorTable saveAndShowAs: 'exampleBackgroundColorTable.pdf' )  "  

	| report |

	report := self exampleBackgroundColorTable.

	report buildPDF.
	self assert: report printOutput = self outputBackgroundColorTable.

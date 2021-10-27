tests - output
testOutputBackgroundColorHexTable
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsPrintOutput: #exampleBackgroundColorHexTable )

	 (  self new exampleBackgroundColorHexTable saveAndShowAs: 'exampleBackgroundColorHexTable.pdf' )  "  

	| report |

	report := self exampleBackgroundColorHexTable.

	report buildPDF.
	self assert: report printOutput = self outputBackgroundColorHexTable.

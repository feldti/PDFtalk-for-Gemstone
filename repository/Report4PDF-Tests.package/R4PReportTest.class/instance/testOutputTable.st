tests - output
testOutputTable
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsPrintOutput: #exampleTable )

	 (  self new exampleTable saveAndShowAs: 'exampleTable.pdf' )  "  

	| report |

	report := self exampleTable.

	report buildPDF.
	self assert: report printOutput = self outputTable.

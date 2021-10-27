tests - output
testOutputTableNestedTable
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsPrintOutput: #exampleTableNestedTable )

	 (  self new exampleTableNestedTable saveAndShowAs: 'exampleTableNestedTable.pdf' )  "  

	| report |

	report := self exampleTableNestedTable.

	report buildPDF.
	self assert: report printOutput = self outputTableNestedTable.

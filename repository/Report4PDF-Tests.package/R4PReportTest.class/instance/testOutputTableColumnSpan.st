tests - output
testOutputTableColumnSpan
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsPrintOutput: #exampleTableColumnSpan )

	 (  self new exampleTableColumnSpan saveAndShowAs: 'exampleTableColumnSpan.pdf' )  "  

	| report |

	report := self exampleTableColumnSpan.

	report buildPDF.
	self assert: report printOutput = self outputTableColumnSpan.

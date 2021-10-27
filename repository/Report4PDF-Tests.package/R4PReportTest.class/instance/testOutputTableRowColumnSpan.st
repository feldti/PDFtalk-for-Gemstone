tests - output
testOutputTableRowColumnSpan
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsPrintOutput: #exampleTableRowColumnSpan )

	 (  self new exampleTableRowColumnSpan saveAndShowAs: 'exampleTableRowColumnSpan.pdf' )  "  

	| report |

	report := self exampleTableRowColumnSpan.

	report buildPDF.
	self assert: report printOutput = self outputTableRowColumnSpan.

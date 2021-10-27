tests - output
testOutputTableRowSpan
	 "Generated on 13. Juni 2021 um 18:14:30
	 (  self new createTestContentsPrintOutput: #exampleTableRowSpan )

	 (  self new exampleTableRowSpan saveAndShowAs: 'exampleTableRowSpan.pdf' )  "  

	| report |

	report := self exampleTableRowSpan.

	report buildPDF.
	self assert: report printOutput = self outputTableRowSpan.

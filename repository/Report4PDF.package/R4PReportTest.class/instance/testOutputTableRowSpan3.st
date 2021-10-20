tests - output
testOutputTableRowSpan3
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsPrintOutput: #exampleTableRowSpan3 )

	 (  self new exampleTableRowSpan3 saveAndShowAs: 'exampleTableRowSpan3.pdf' )  "  

	| report |

	report := self exampleTableRowSpan3.

	report buildPDF.
	self assert: report printOutput = self outputTableRowSpan3.

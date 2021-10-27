tests - output
testOutputTableRowSpan2
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsPrintOutput: #exampleTableRowSpan2 )

	 (  self new exampleTableRowSpan2 saveAndShowAs: 'exampleTableRowSpan2.pdf' )  "  

	| report |

	report := self exampleTableRowSpan2.

	report buildPDF.
	self assert: report printOutput = self outputTableRowSpan2.

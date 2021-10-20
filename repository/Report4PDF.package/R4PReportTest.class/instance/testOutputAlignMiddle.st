tests - output
testOutputAlignMiddle
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsPrintOutput: #exampleAlignMiddle )

	 (  self new exampleAlignMiddle saveAndShowAs: 'exampleAlignMiddle.pdf' )  "  

	| report |

	report := self exampleAlignMiddle.

	report buildPDF.
	self assert: report printOutput = self outputAlignMiddle.

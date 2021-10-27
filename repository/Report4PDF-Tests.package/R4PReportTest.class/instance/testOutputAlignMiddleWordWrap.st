tests - output
testOutputAlignMiddleWordWrap
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsPrintOutput: #exampleAlignMiddleWordWrap )

	 (  self new exampleAlignMiddleWordWrap saveAndShowAs: 'exampleAlignMiddleWordWrap.pdf' )  "  

	| report |

	report := self exampleAlignMiddleWordWrap.

	report buildPDF.
	self assert: report printOutput = self outputAlignMiddleWordWrap.

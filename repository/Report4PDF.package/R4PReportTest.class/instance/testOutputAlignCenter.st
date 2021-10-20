tests - output
testOutputAlignCenter
	 "Generated on 13. Juni 2021 um 18:14:31
	 (  self new createTestContentsPrintOutput: #exampleAlignCenter )

	 (  self new exampleAlignCenter saveAndShowAs: 'exampleAlignCenter.pdf' )  "  

	| report |

	report := self exampleAlignCenter.

	report buildPDF.
	self assert: report printOutput = self outputAlignCenter.

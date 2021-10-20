tests - output
testOutputAlignTopMiddleBottom
	 "Generated on 13. Juni 2021 um 18:14:32
	 (  self new createTestContentsPrintOutput: #exampleAlignTopMiddleBottom )

	 (  self new exampleAlignTopMiddleBottom saveAndShowAs: 'exampleAlignTopMiddleBottom.pdf' )  "  

	| report |

	report := self exampleAlignTopMiddleBottom.

	report buildPDF.
	self assert: report printOutput = self outputAlignTopMiddleBottom.

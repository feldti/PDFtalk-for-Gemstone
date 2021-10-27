tests - output
testOutputLinesFixed
	 "Generated on 13. Juni 2021 um 18:14:32
	 (  self new createTestContentsPrintOutput: #exampleLinesFixed )

	 (  self new exampleLinesFixed saveAndShowAs: 'exampleLinesFixed.pdf' )  "  

	| report |

	report := self exampleLinesFixed.

	report buildPDF.
	self assert: report printOutput = self outputLinesFixed.

tests - output
testOutputTextWithLines
	 "Generated on 13. Juni 2021 um 18:14:31
	 (  self new createTestContentsPrintOutput: #exampleTextWithLines )

	 (  self new exampleTextWithLines saveAndShowAs: 'exampleTextWithLines.pdf' )  "  

	| report |

	report := self exampleTextWithLines.

	report buildPDF.
	self assert: report printOutput = self outputTextWithLines.

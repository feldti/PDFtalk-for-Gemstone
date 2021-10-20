tests - output
testOutputTextBorder
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsPrintOutput: #exampleTextBorder )

	 (  self new exampleTextBorder saveAndShowAs: 'exampleTextBorder.pdf' )  "  

	| report |

	report := self exampleTextBorder.

	report buildPDF.
	self assert: report printOutput = self outputTextBorder.

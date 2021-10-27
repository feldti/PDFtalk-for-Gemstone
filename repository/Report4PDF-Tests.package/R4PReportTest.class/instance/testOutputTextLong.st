tests - output
testOutputTextLong
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsPrintOutput: #exampleTextLong )

	 (  self new exampleTextLong saveAndShowAs: 'exampleTextLong.pdf' )  "  

	| report |

	report := self exampleTextLong.

	report buildPDF.
	self assert: report printOutput = self outputTextLong.

tests - output
testOutputTextLongHeaderFooter
	 "Generated on 13. Juni 2021 um 18:14:32
	 (  self new createTestContentsPrintOutput: #exampleTextLongHeaderFooter )

	 (  self new exampleTextLongHeaderFooter saveAndShowAs: 'exampleTextLongHeaderFooter.pdf' )  "  

	| report |

	report := self exampleTextLongHeaderFooter.

	report buildPDF.
	self assert: report printOutput = self outputTextLongHeaderFooter.

tests - output
testOutputTextBorderHeaderFooter
	 "Generated on 13. Juni 2021 um 18:14:31
	 (  self new createTestContentsPrintOutput: #exampleTextBorderHeaderFooter )

	 (  self new exampleTextBorderHeaderFooter saveAndShowAs: 'exampleTextBorderHeaderFooter.pdf' )  "  

	| report |

	report := self exampleTextBorderHeaderFooter.

	report buildPDF.
	self assert: report printOutput = self outputTextBorderHeaderFooter.

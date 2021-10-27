tests - output
testOutputHeaderFooter
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsPrintOutput: #exampleHeaderFooter )

	 (  self new exampleHeaderFooter saveAndShowAs: 'exampleHeaderFooter.pdf' )  "  

	| report |

	report := self exampleHeaderFooter.

	report buildPDF.
	self assert: report printOutput = self outputHeaderFooter.

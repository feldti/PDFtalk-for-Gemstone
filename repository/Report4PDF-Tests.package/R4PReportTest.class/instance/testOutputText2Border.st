tests - output
testOutputText2Border
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsPrintOutput: #exampleText2Border )

	 (  self new exampleText2Border saveAndShowAs: 'exampleText2Border.pdf' )  "  

	| report |

	report := self exampleText2Border.

	report buildPDF.
	self assert: report printOutput = self outputText2Border.

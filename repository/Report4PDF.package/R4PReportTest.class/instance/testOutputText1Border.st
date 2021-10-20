tests - output
testOutputText1Border
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsPrintOutput: #exampleText1Border )

	 (  self new exampleText1Border saveAndShowAs: 'exampleText1Border.pdf' )  "  

	| report |

	report := self exampleText1Border.

	report buildPDF.
	self assert: report printOutput = self outputText1Border.

tests - output
testOutputText
	 "Generated on 13. Juni 2021 um 18:14:33
	 (  self new createTestContentsPrintOutput: #exampleText )

	 (  self new exampleText saveAndShowAs: 'exampleText.pdf' )  "  

	| report |

	report := self exampleText.

	report buildPDF.
	self assert: report printOutput = self outputText.

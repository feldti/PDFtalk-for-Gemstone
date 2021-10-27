tests - output
testOutputText2
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsPrintOutput: #exampleText2 )

	 (  self new exampleText2 saveAndShowAs: 'exampleText2.pdf' )  "  

	| report |

	report := self exampleText2.

	report buildPDF.
	self assert: report printOutput = self outputText2.

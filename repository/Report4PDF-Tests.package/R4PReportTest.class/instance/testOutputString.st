tests - output
testOutputString
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsPrintOutput: #exampleString )

	 (  self new exampleString saveAndShowAs: 'exampleString.pdf' )  "  

	| report |

	report := self exampleString.

	report buildPDF.
	self assert: report printOutput = self outputString.

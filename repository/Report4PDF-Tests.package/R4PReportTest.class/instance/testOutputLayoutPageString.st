tests - output
testOutputLayoutPageString
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsPrintOutput: #exampleLayoutPageString )

	 (  self new exampleLayoutPageString saveAndShowAs: 'exampleLayoutPageString.pdf' )  "  

	| report |

	report := self exampleLayoutPageString.

	report buildPDF.
	self assert: report printOutput = self outputLayoutPageString.

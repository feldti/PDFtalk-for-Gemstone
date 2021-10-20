tests - output
testOutputBusinessCardText1Border
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsPrintOutput: #exampleBusinessCardText1Border )

	 (  self new exampleBusinessCardText1Border saveAndShowAs: 'exampleBusinessCardText1Border.pdf' )  "  

	| report |

	report := self exampleBusinessCardText1Border.

	report buildPDF.
	self assert: report printOutput = self outputBusinessCardText1Border.

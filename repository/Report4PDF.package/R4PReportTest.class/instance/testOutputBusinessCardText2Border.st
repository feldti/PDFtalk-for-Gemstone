tests - output
testOutputBusinessCardText2Border
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsPrintOutput: #exampleBusinessCardText2Border )

	 (  self new exampleBusinessCardText2Border saveAndShowAs: 'exampleBusinessCardText2Border.pdf' )  "  

	| report |

	report := self exampleBusinessCardText2Border.

	report buildPDF.
	self assert: report printOutput = self outputBusinessCardText2Border.

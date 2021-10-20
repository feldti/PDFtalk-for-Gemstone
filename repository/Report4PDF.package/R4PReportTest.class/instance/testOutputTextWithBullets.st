tests - output
testOutputTextWithBullets
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsPrintOutput: #exampleTextWithBullets )

	 (  self new exampleTextWithBullets saveAndShowAs: 'exampleTextWithBullets.pdf' )  "  

	| report |

	report := self exampleTextWithBullets.

	report buildPDF.
	self assert: report printOutput = self outputTextWithBullets.

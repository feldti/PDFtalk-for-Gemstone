tests - output
testOutputBullet
	 "Generated on 13. Juni 2021 um 18:14:32
	 (  self new createTestContentsPrintOutput: #exampleBullet )

	 (  self new exampleBullet saveAndShowAs: 'exampleBullet.pdf' )  "  

	| report |

	report := self exampleBullet.

	report buildPDF.
	self assert: report printOutput = self outputBullet.

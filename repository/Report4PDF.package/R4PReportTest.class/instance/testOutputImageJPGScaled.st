tests - output
testOutputImageJPGScaled
	 "Generated on 13. Juni 2021 um 18:14:32
	 (  self new createTestContentsPrintOutput: #exampleImageJPGScaled )

	 (  self new exampleImageJPGScaled saveAndShowAs: 'exampleImageJPGScaled.pdf' )  "  

	| report |

	report := self exampleImageJPGScaled.

	report buildPDF.
	self assert: report printOutput = self outputImageJPGScaled.

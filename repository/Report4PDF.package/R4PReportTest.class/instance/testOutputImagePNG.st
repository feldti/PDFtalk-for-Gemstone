tests - output
testOutputImagePNG
	 "Generated on 13. Juni 2021 um 18:14:33
	 (  self new createTestContentsPrintOutput: #exampleImagePNG )

	 (  self new exampleImagePNG saveAndShowAs: 'exampleImagePNG.pdf' )  "  

	| report |

	report := self exampleImagePNG.

	report buildPDF.
	self assert: report printOutput = self outputImagePNG.

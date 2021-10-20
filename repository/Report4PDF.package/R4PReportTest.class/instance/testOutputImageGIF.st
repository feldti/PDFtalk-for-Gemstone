tests - output
testOutputImageGIF
	 "Generated on 13. Juni 2021 um 18:14:33
	 (  self new createTestContentsPrintOutput: #exampleImageGIF )

	 (  self new exampleImageGIF saveAndShowAs: 'exampleImageGIF.pdf' )  "  

	| report |

	report := self exampleImageGIF.

	report buildPDF.
	self assert: report printOutput = self outputImageGIF.

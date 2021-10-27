tests - output
testOutputImageColorGIF
	 "Generated on 13. Juni 2021 um 18:14:33
	 (  self new createTestContentsPrintOutput: #exampleImageColorGIF )

	 (  self new exampleImageColorGIF saveAndShowAs: 'exampleImageColorGIF.pdf' )  "  

	| report |

	report := self exampleImageColorGIF.

	report buildPDF.
	self assert: report printOutput = self outputImageColorGIF.

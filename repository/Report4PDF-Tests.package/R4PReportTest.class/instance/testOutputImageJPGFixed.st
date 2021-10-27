tests - output
testOutputImageJPGFixed
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsPrintOutput: #exampleImageJPGFixed )

	 (  self new exampleImageJPGFixed saveAndShowAs: 'exampleImageJPGFixed.pdf' )  "  

	| report |

	report := self exampleImageJPGFixed.

	report buildPDF.
	self assert: report printOutput = self outputImageJPGFixed.

tests - output
testOutputImageJPGPageBreak
	 "Generated on 13. Juni 2021 um 18:14:32
	 (  self new createTestContentsPrintOutput: #exampleImageJPGPageBreak )

	 (  self new exampleImageJPGPageBreak saveAndShowAs: 'exampleImageJPGPageBreak.pdf' )  "  

	| report |

	report := self exampleImageJPGPageBreak.

	report buildPDF.
	self assert: report printOutput = self outputImageJPGPageBreak.

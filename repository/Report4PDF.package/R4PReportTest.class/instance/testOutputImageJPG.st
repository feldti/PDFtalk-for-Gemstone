tests - output
testOutputImageJPG
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsPrintOutput: #exampleImageJPG )

	 (  self new exampleImageJPG saveAndShowAs: 'exampleImageJPG.pdf' )  "  

	| report |

	report := self exampleImageJPG.

	report buildPDF.
	self assert: report printOutput = self outputImageJPG.

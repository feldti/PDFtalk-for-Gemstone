tests - output
testOutputBackgroundColor
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsPrintOutput: #exampleBackgroundColor )

	 (  self new exampleBackgroundColor saveAndShowAs: 'exampleBackgroundColor.pdf' )  "  

	| report |

	report := self exampleBackgroundColor.

	report buildPDF.
	self assert: report printOutput = self outputBackgroundColor.

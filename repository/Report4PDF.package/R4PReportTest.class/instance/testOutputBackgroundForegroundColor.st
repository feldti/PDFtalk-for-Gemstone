tests - output
testOutputBackgroundForegroundColor
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsPrintOutput: #exampleBackgroundForegroundColor )

	 (  self new exampleBackgroundForegroundColor saveAndShowAs: 'exampleBackgroundForegroundColor.pdf' )  "  

	| report |

	report := self exampleBackgroundForegroundColor.

	report buildPDF.
	self assert: report printOutput = self outputBackgroundForegroundColor.

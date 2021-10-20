tests - output
testOutputTextWithMixedStrings
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsPrintOutput: #exampleTextWithMixedStrings )

	 (  self new exampleTextWithMixedStrings saveAndShowAs: 'exampleTextWithMixedStrings.pdf' )  "  

	| report |

	report := self exampleTextWithMixedStrings.

	report buildPDF.
	self assert: report printOutput = self outputTextWithMixedStrings.

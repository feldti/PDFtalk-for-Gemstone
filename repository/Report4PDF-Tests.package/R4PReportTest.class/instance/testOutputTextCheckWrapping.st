tests - output
testOutputTextCheckWrapping
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsPrintOutput: #exampleTextCheckWrapping )

	 (  self new exampleTextCheckWrapping saveAndShowAs: 'exampleTextCheckWrapping.pdf' )  "  

	| report |

	report := self exampleTextCheckWrapping.

	report buildPDF.
	self assert: report printOutput = self outputTextCheckWrapping.

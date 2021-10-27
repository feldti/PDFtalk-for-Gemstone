tests - output
testOutputTextMultiplePages
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsPrintOutput: #exampleTextMultiplePages )

	 (  self new exampleTextMultiplePages saveAndShowAs: 'exampleTextMultiplePages.pdf' )  "  

	| report |

	report := self exampleTextMultiplePages.

	report buildPDF.
	self assert: report printOutput = self outputTextMultiplePages.

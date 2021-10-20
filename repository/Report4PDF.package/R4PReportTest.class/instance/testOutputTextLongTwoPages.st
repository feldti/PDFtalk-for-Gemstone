tests - output
testOutputTextLongTwoPages
	 "Generated on 13. Juni 2021 um 18:14:31
	 (  self new createTestContentsPrintOutput: #exampleTextLongTwoPages )

	 (  self new exampleTextLongTwoPages saveAndShowAs: 'exampleTextLongTwoPages.pdf' )  "  

	| report |

	report := self exampleTextLongTwoPages.

	report buildPDF.
	self assert: report printOutput = self outputTextLongTwoPages.

tests - output
testOutputTextFlip
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsPrintOutput: #exampleTextFlip )

	 (  self new exampleTextFlip saveAndShowAs: 'exampleTextFlip.pdf' )  "  

	| report |

	report := self exampleTextFlip.

	report buildPDF.
	self assert: report printOutput = self outputTextFlip.

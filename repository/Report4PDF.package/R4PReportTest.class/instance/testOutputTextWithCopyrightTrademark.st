tests - output
testOutputTextWithCopyrightTrademark
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsPrintOutput: #exampleTextWithCopyrightTrademark )

	 (  self new exampleTextWithCopyrightTrademark saveAndShowAs: 'exampleTextWithCopyrightTrademark.pdf' )  "  

	| report |

	report := self exampleTextWithCopyrightTrademark.

	report buildPDF.
	self assert: report printOutput = self outputTextWithCopyrightTrademark.

tests - output
testOutputTextLongPageNumberReset
	 "Generated on 13. Juni 2021 um 18:14:32
	 (  self new createTestContentsPrintOutput: #exampleTextLongPageNumberReset )

	 (  self new exampleTextLongPageNumberReset saveAndShowAs: 'exampleTextLongPageNumberReset.pdf' )  "  

	| report |

	report := self exampleTextLongPageNumberReset.

	report buildPDF.
	self assert: report printOutput = self outputTextLongPageNumberReset.

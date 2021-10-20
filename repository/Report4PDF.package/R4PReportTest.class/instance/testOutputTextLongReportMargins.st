tests - output
testOutputTextLongReportMargins
	 "Generated on 13. Juni 2021 um 18:14:33
	 (  self new createTestContentsPrintOutput: #exampleTextLongReportMargins )

	 (  self new exampleTextLongReportMargins saveAndShowAs: 'exampleTextLongReportMargins.pdf' )  "  

	| report |

	report := self exampleTextLongReportMargins.

	report buildPDF.
	self assert: report printOutput = self outputTextLongReportMargins.

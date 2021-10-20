tests - PDF
testPDFTextLongReportMargins
	 "Generated on 13. Juni 2021 um 18:14:33
	 (  self new createTestContentsHexString: #exampleTextLongReportMargins )

	 (  self new exampleTextLongReportMargins saveAndShowAs: 'exampleTextLongReportMargins.pdf' )  "  

	| report |

	report := self exampleTextLongReportMargins.
	self assert: (report byteArraySUnitAs: 'testTextLongReportMargins.pdf') asHexString = self pdfTextLongReportMargins

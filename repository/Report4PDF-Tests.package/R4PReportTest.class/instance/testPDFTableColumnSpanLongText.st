tests - PDF
testPDFTableColumnSpanLongText
	 "Generated on 13. Juni 2021 um 18:14:38
	 (  self new createTestContentsHexString: #exampleTableColumnSpanLongText )

	 (  self new exampleTableColumnSpanLongText saveAndShowAs: 'exampleTableColumnSpanLongText.pdf' )  "  

	| report |

	report := self exampleTableColumnSpanLongText.
	self assert: (report byteArraySUnitAs: 'testTableColumnSpanLongText.pdf') asHexString = self pdfTableColumnSpanLongText

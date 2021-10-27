tests - PDF
testPDFTextLongPageNumberReset
	 "Generated on 13. Juni 2021 um 18:14:32
	 (  self new createTestContentsHexString: #exampleTextLongPageNumberReset )

	 (  self new exampleTextLongPageNumberReset saveAndShowAs: 'exampleTextLongPageNumberReset.pdf' )  "  

	| report |

	report := self exampleTextLongPageNumberReset.
	self assert: (report byteArraySUnitAs: 'testTextLongPageNumberReset.pdf') asHexString = self pdfTextLongPageNumberReset

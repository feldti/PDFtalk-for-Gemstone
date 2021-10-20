tests - PDF
testPDFTextLongTwoPages
	 "Generated on 13. Juni 2021 um 18:14:31
	 (  self new createTestContentsHexString: #exampleTextLongTwoPages )

	 (  self new exampleTextLongTwoPages saveAndShowAs: 'exampleTextLongTwoPages.pdf' )  "  

	| report |

	report := self exampleTextLongTwoPages.
	self assert: (report byteArraySUnitAs: 'testTextLongTwoPages.pdf') asHexString = self pdfTextLongTwoPages

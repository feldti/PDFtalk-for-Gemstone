tests - PDF
testPDFTextLong
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsHexString: #exampleTextLong )

	 (  self new exampleTextLong saveAndShowAs: 'exampleTextLong.pdf' )  "  

	| report |

	report := self exampleTextLong.
	self assert: (report byteArraySUnitAs: 'testTextLong.pdf') asHexString = self pdfTextLong

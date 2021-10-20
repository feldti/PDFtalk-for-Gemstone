tests - PDF
testPDFTextWithCopyrightTrademark
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsHexString: #exampleTextWithCopyrightTrademark )

	 (  self new exampleTextWithCopyrightTrademark saveAndShowAs: 'exampleTextWithCopyrightTrademark.pdf' )  "  

	| report |

	report := self exampleTextWithCopyrightTrademark.
	self assert: (report byteArraySUnitAs: 'testTextWithCopyrightTrademark.pdf') asHexString = self pdfTextWithCopyrightTrademark

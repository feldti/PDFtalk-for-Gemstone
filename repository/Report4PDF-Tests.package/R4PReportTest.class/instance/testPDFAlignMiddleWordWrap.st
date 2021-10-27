tests - PDF
testPDFAlignMiddleWordWrap
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsHexString: #exampleAlignMiddleWordWrap )

	 (  self new exampleAlignMiddleWordWrap saveAndShowAs: 'exampleAlignMiddleWordWrap.pdf' )  "  

	| report |

	report := self exampleAlignMiddleWordWrap.
	self assert: (report byteArraySUnitAs: 'testAlignMiddleWordWrap.pdf') asHexString = self pdfAlignMiddleWordWrap

tests - PDF
testPDFTextBorderHeaderFooter
	 "Generated on 13. Juni 2021 um 18:14:31
	 (  self new createTestContentsHexString: #exampleTextBorderHeaderFooter )

	 (  self new exampleTextBorderHeaderFooter saveAndShowAs: 'exampleTextBorderHeaderFooter.pdf' )  "  

	| report |

	report := self exampleTextBorderHeaderFooter.
	self assert: (report byteArraySUnitAs: 'testTextBorderHeaderFooter.pdf') asHexString = self pdfTextBorderHeaderFooter

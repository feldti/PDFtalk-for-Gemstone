tests - PDF
testPDFTextLongHeaderFooter
	 "Generated on 13. Juni 2021 um 18:14:32
	 (  self new createTestContentsHexString: #exampleTextLongHeaderFooter )

	 (  self new exampleTextLongHeaderFooter saveAndShowAs: 'exampleTextLongHeaderFooter.pdf' )  "  

	| report |

	report := self exampleTextLongHeaderFooter.
	self assert: (report byteArraySUnitAs: 'testTextLongHeaderFooter.pdf') asHexString = self pdfTextLongHeaderFooter

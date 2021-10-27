tests - PDF
testPDFTextWithLines
	 "Generated on 13. Juni 2021 um 18:14:31
	 (  self new createTestContentsHexString: #exampleTextWithLines )

	 (  self new exampleTextWithLines saveAndShowAs: 'exampleTextWithLines.pdf' )  "  

	| report |

	report := self exampleTextWithLines.
	self assert: (report byteArraySUnitAs: 'testTextWithLines.pdf') asHexString = self pdfTextWithLines

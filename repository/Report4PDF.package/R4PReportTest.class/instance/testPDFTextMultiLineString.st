tests - PDF
testPDFTextMultiLineString
	 "Generated on 13. Juni 2021 um 18:14:31
	 (  self new createTestContentsHexString: #exampleTextMultiLineString )

	 (  self new exampleTextMultiLineString saveAndShowAs: 'exampleTextMultiLineString.pdf' )  "  

	| report |

	report := self exampleTextMultiLineString.
	self assert: (report byteArraySUnitAs: 'testTextMultiLineString.pdf') asHexString = self pdfTextMultiLineString

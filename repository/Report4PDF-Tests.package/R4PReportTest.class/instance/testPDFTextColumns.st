tests - PDF
testPDFTextColumns
	 "Generated on 13. Juni 2021 um 18:14:32
	 (  self new createTestContentsHexString: #exampleTextColumns )

	 (  self new exampleTextColumns saveAndShowAs: 'exampleTextColumns.pdf' )  "  

	| report |

	report := self exampleTextColumns.
	self assert: (report byteArraySUnitAs: 'testTextColumns.pdf') asHexString = self pdfTextColumns

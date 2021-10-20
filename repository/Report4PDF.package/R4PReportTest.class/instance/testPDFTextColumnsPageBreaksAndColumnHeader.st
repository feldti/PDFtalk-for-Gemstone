tests - PDF
testPDFTextColumnsPageBreaksAndColumnHeader
	 "Generated on 13. Juni 2021 um 18:14:33
	 (  self new createTestContentsHexString: #exampleTextColumnsPageBreaksAndColumnHeader )

	 (  self new exampleTextColumnsPageBreaksAndColumnHeader saveAndShowAs: 'exampleTextColumnsPageBreaksAndColumnHeader.pdf' )  "  

	| report |

	report := self exampleTextColumnsPageBreaksAndColumnHeader.
	self assert: (report byteArraySUnitAs: 'testTextColumnsPageBreaksAndColumnHeader.pdf') asHexString = self pdfTextColumnsPageBreaksAndColumnHeader

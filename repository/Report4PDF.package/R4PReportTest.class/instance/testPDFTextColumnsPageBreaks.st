tests - PDF
testPDFTextColumnsPageBreaks
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsHexString: #exampleTextColumnsPageBreaks )

	 (  self new exampleTextColumnsPageBreaks saveAndShowAs: 'exampleTextColumnsPageBreaks.pdf' )  "  

	| report |

	report := self exampleTextColumnsPageBreaks.
	self assert: (report byteArraySUnitAs: 'testTextColumnsPageBreaks.pdf') asHexString = self pdfTextColumnsPageBreaks

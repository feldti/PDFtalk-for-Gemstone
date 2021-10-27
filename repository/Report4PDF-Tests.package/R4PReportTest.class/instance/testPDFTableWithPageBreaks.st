tests - PDF
testPDFTableWithPageBreaks
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsHexString: #exampleTableWithPageBreaks )

	 (  self new exampleTableWithPageBreaks saveAndShowAs: 'exampleTableWithPageBreaks.pdf' )  "  

	| report |

	report := self exampleTableWithPageBreaks.
	self assert: (report byteArraySUnitAs: 'testTableWithPageBreaks.pdf') asHexString = self pdfTableWithPageBreaks

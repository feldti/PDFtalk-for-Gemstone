tests - PDF
testPDFTableWithMixedPageBreaks
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsHexString: #exampleTableWithMixedPageBreaks )

	 (  self new exampleTableWithMixedPageBreaks saveAndShowAs: 'exampleTableWithMixedPageBreaks.pdf' )  "  

	| report |

	report := self exampleTableWithMixedPageBreaks.
	self assert: (report byteArraySUnitAs: 'testTableWithMixedPageBreaks.pdf') asHexString = self pdfTableWithMixedPageBreaks

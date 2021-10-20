tests - PDF
testPDFTextColumnsPageBreaks2
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsHexString: #exampleTextColumnsPageBreaks2 )

	 (  self new exampleTextColumnsPageBreaks2 saveAndShowAs: 'exampleTextColumnsPageBreaks2.pdf' )  "  

	| report |

	report := self exampleTextColumnsPageBreaks2.
	self assert: (report byteArraySUnitAs: 'testTextColumnsPageBreaks2.pdf') asHexString = self pdfTextColumnsPageBreaks2

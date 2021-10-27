tests - PDF
testPDFTableRowSpan3
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsHexString: #exampleTableRowSpan3 )

	 (  self new exampleTableRowSpan3 saveAndShowAs: 'exampleTableRowSpan3.pdf' )  "  

	| report |

	report := self exampleTableRowSpan3.
	self assert: (report byteArraySUnitAs: 'testTableRowSpan3.pdf') asHexString = self pdfTableRowSpan3

tests - PDF
testPDFTableRowSpan
	 "Generated on 13. Juni 2021 um 18:14:30
	 (  self new createTestContentsHexString: #exampleTableRowSpan )

	 (  self new exampleTableRowSpan saveAndShowAs: 'exampleTableRowSpan.pdf' )  "  

	| report |

	report := self exampleTableRowSpan.
	self assert: (report byteArraySUnitAs: 'testTableRowSpan.pdf') asHexString = self pdfTableRowSpan

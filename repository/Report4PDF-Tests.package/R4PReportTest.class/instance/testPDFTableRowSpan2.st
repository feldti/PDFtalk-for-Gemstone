tests - PDF
testPDFTableRowSpan2
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsHexString: #exampleTableRowSpan2 )

	 (  self new exampleTableRowSpan2 saveAndShowAs: 'exampleTableRowSpan2.pdf' )  "  

	| report |

	report := self exampleTableRowSpan2.
	self assert: (report byteArraySUnitAs: 'testTableRowSpan2.pdf') asHexString = self pdfTableRowSpan2

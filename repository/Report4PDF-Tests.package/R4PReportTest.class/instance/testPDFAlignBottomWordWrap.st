tests - PDF
testPDFAlignBottomWordWrap
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsHexString: #exampleAlignBottomWordWrap )

	 (  self new exampleAlignBottomWordWrap saveAndShowAs: 'exampleAlignBottomWordWrap.pdf' )  "  

	| report |

	report := self exampleAlignBottomWordWrap.
	self assert: (report byteArraySUnitAs: 'testAlignBottomWordWrap.pdf') asHexString = self pdfAlignBottomWordWrap

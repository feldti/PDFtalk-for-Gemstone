tests - PDF
testPDFAlignMiddle
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsHexString: #exampleAlignMiddle )

	 (  self new exampleAlignMiddle saveAndShowAs: 'exampleAlignMiddle.pdf' )  "  

	| report |

	report := self exampleAlignMiddle.
	self assert: (report byteArraySUnitAs: 'testAlignMiddle.pdf') asHexString = self pdfAlignMiddle

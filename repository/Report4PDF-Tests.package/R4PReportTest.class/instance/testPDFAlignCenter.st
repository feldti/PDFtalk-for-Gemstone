tests - PDF
testPDFAlignCenter
	 "Generated on 13. Juni 2021 um 18:14:31
	 (  self new createTestContentsHexString: #exampleAlignCenter )

	 (  self new exampleAlignCenter saveAndShowAs: 'exampleAlignCenter.pdf' )  "  

	| report |

	report := self exampleAlignCenter.
	self assert: (report byteArraySUnitAs: 'testAlignCenter.pdf') asHexString = self pdfAlignCenter

tests - PDF
testPDFBackgroundColor
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsHexString: #exampleBackgroundColor )

	 (  self new exampleBackgroundColor saveAndShowAs: 'exampleBackgroundColor.pdf' )  "  

	| report |

	report := self exampleBackgroundColor.
	self assert: (report byteArraySUnitAs: 'testBackgroundColor.pdf') asHexString = self pdfBackgroundColor
